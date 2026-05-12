import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../env.dart';
import '../endpoints.dart';
import '../models/chat.dart';
import '../sse/sse_client.dart';

/// Streaming wrapper over `POST /help/stream` (Terminal 1's app-help endpoint).
///
/// The wire format mirrors `/chat/stream` — a sequence of `data: {json}` SSE
/// frames keyed by `event` (`token`, `done`, `error`). We reuse
/// [ChatStreamEvent] so the help bot can share message-building logic with
/// the existing chat feature.
///
/// This service does NOT pass screening context, program slugs, or session
/// ids — the help bot is strictly about app navigation. Each turn ships
/// only the recent conversation history so the assistant can answer
/// follow-ups.
abstract class HelpService {
  Stream<ChatStreamEvent> ask({
    required String userMessage,
    List<ChatMessage> history = const <ChatMessage>[],
  });

  void close();
}

class HelpServiceHttp implements HelpService {
  HelpServiceHttp({
    SseClient? sseClient,
    http.Client? httpClient,
    this.baseUrl,
    this.maxRetries = 2,
  }) : _sseClient = sseClient ?? SseClient(client: httpClient);

  final SseClient _sseClient;
  final int maxRetries;
  final String? baseUrl;

  String get _resolvedBase => baseUrl ?? Env.apiBase;

  @override
  Stream<ChatStreamEvent> ask({
    required String userMessage,
    List<ChatMessage> history = const <ChatMessage>[],
  }) async* {
    final body = <String, dynamic>{
      'messages': <Map<String, String>>[
        for (final msg in history)
          <String, String>{'role': msg.role, 'content': msg.content},
        <String, String>{'role': 'user', 'content': userMessage},
      ],
    };
    final url = Uri.parse('$_resolvedBase${Endpoints.helpStream}');

    var attempt = 0;
    while (true) {
      try {
        await for (final event in _sseClient.connect(url: url, body: body)) {
          final parsed = _parse(event);
          if (parsed != null) yield parsed;
        }
        return;
      } on SseHttpException catch (e) {
        yield ChatStreamEvent.error(
          message: e.statusCode == 404
              ? 'Help assistant is not configured on the server.'
              : 'Help assistant returned ${e.statusCode}',
          code: 'HTTP_${e.statusCode}',
        );
        return;
      } catch (e) {
        attempt += 1;
        if (attempt > maxRetries) {
          yield ChatStreamEvent.error(
            message: 'Could not reach the help assistant: $e',
            code: 'HELP_FAILED',
          );
          return;
        }
        final delayMs = 200 * (1 << (attempt - 1));
        await Future<void>.delayed(Duration(milliseconds: delayMs));
      }
    }
  }

  @override
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
      case 'done':
        return ChatStreamEvent.done(
          finishReason: payload['finish_reason']?.toString(),
          usage: payload['usage'] is Map
              ? Map<String, dynamic>.from(payload['usage'] as Map)
              : null,
          model: payload['model']?.toString(),
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

/// Test/dev fallback. Streams a canned multi-token response with small
/// delays so the UI's streaming animation can be exercised without a
/// live backend. Activate by overriding [helpServiceProvider] in a
/// ProviderScope.
class MockHelpService implements HelpService {
  MockHelpService({
    this.tokens = const <String>[
      'Sure — here is how this app works.\n\n',
      'Use **Screening** to walk through eligibility questions, ',
      '**Program Explorer** to browse the catalog, and ',
      '**Chat** for benefits questions.',
    ],
    this.tokenDelay = const Duration(milliseconds: 80),
  });

  final List<String> tokens;
  final Duration tokenDelay;

  @override
  Stream<ChatStreamEvent> ask({
    required String userMessage,
    List<ChatMessage> history = const <ChatMessage>[],
  }) async* {
    for (final t in tokens) {
      await Future<void>.delayed(tokenDelay);
      yield ChatStreamEvent.token(t);
    }
    yield const ChatStreamEvent.done(finishReason: 'stop');
  }

  @override
  void close() {}
}
