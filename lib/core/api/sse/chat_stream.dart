import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../env.dart';
import '../endpoints.dart';
import '../models/chat.dart';
import 'sse_client.dart';

/// Optional grounding context for a chat turn — mirrors the Next.js
/// `ChatStreamRequest` shape minus `messages` (which we accept directly).
class ChatContext {
  const ChatContext({
    this.sessionId,
    this.contextMode = 'general',
    this.programSlug,
    this.model,
  });

  final String? sessionId;
  final String contextMode;
  final String? programSlug;
  final String? model;
}

/// High-level wrapper over [SseClient] that knows how to talk to
/// `/chat/stream` (FastAPI `app/routers/chat.py`).
///
/// Emits a stream of [ChatStreamEvent]s parsed from `data: {json}` SSE
/// frames. On transient network failures we retry with exponential backoff
/// up to [maxRetries] (default 3); each retry replays the full request
/// since the backend doesn't support resume.
class ChatStream {
  ChatStream({
    SseClient? sseClient,
    http.Client? httpClient,
    this.maxRetries = 3,
    this.baseUrl,
  }) : _sseClient = sseClient ?? SseClient(client: httpClient);

  final SseClient _sseClient;
  final int maxRetries;

  /// Override the API base — defaults to [Env.apiBase]. Useful for tests.
  final String? baseUrl;

  String get _resolvedBase => baseUrl ?? Env.apiBase;

  Stream<ChatStreamEvent> connect({
    required String sessionId,
    required String userMessage,
    ChatContext? context,
    List<ChatMessage> history = const <ChatMessage>[],
  }) async* {
    final mergedContext = context ?? ChatContext(sessionId: sessionId);
    final body = <String, dynamic>{
      'session_id': mergedContext.sessionId ?? sessionId,
      'context_mode': mergedContext.contextMode,
      if (mergedContext.programSlug != null)
        'program_slug': mergedContext.programSlug,
      if (mergedContext.model != null) 'model': mergedContext.model,
      'messages': <Map<String, String>>[
        for (final msg in history)
          <String, String>{'role': msg.role, 'content': msg.content},
        <String, String>{'role': 'user', 'content': userMessage},
      ],
    };
    final url = Uri.parse('$_resolvedBase${Endpoints.chatStream}');

    var attempt = 0;
    while (true) {
      try {
        await for (final event in _sseClient.connect(url: url, body: body)) {
          final parsed = _parse(event);
          if (parsed != null) yield parsed;
        }
        return; // graceful close
      } on SseHttpException catch (e) {
        // 4xx are not retriable. 503 surfaces as "assistant offline" up front.
        yield ChatStreamEvent.error(
          message: e.statusCode == 503
              ? 'The assistant is offline (LLM_MODEL not configured).'
              : 'Assistant returned ${e.statusCode}',
          code: 'HTTP_${e.statusCode}',
        );
        return;
      } catch (e) {
        attempt += 1;
        if (attempt > maxRetries) {
          yield ChatStreamEvent.error(
            message: 'Stream failed after $maxRetries retries: $e',
            code: 'STREAM_FAILED',
          );
          return;
        }
        final delayMs = 200 * (1 << (attempt - 1)); // 200, 400, 800
        await Future<void>.delayed(Duration(milliseconds: delayMs));
      }
    }
  }

  void close() => _sseClient.close();

  ChatStreamEvent? _parse(SseEvent event) {
    Map<String, dynamic> payload = const <String, dynamic>{};
    if (event.data.isNotEmpty) {
      try {
        final decoded = jsonDecode(event.data);
        if (decoded is Map<String, dynamic>) {
          payload = decoded;
        } else if (decoded is Map) {
          payload = Map<String, dynamic>.from(decoded);
        }
      } catch (_) {
        return null;
      }
    }
    switch (event.event) {
      case 'token':
        return ChatStreamEvent.token((payload['delta'] ?? '').toString());
      case 'tool_call':
        return ChatStreamEvent.toolCall(
          id: (payload['id'] ?? 'tool-${DateTime.now().millisecondsSinceEpoch}')
              .toString(),
          name: (payload['name'] ?? 'tool').toString(),
          args: payload['args'] is Map
              ? Map<String, dynamic>.from(payload['args'] as Map)
              : <String, dynamic>{},
        );
      case 'tool_result':
        return ChatStreamEvent.toolResult(
          id: (payload['id'] ?? '').toString(),
          result: payload['result'],
        );
      case 'citation':
        return ChatStreamEvent.citation(
          index: (payload['index'] is num)
              ? (payload['index'] as num).toInt()
              : 0,
          title: (payload['title'] ?? 'Source').toString(),
          url: (payload['url'] ?? '#').toString(),
        );
      case 'done':
        return ChatStreamEvent.done(
          finishReason: payload['finish_reason']?.toString(),
          usage: payload['usage'] is Map
              ? Map<String, dynamic>.from(payload['usage'] as Map)
              : null,
          model: payload['model']?.toString(),
          fallbackUsed: payload['fallback_used'] is bool
              ? payload['fallback_used'] as bool
              : null,
        );
      case 'error':
        return ChatStreamEvent.error(
          message: (payload['message'] ?? 'Unknown error').toString(),
          code: payload['code']?.toString(),
        );
      default:
        return null;
    }
  }
}
