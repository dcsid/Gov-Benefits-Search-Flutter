import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

/// One parsed SSE message frame: an event name and a (possibly multi-line)
/// data payload.
class SseEvent {
  const SseEvent({required this.event, required this.data});

  final String event;
  final String data;

  @override
  String toString() => 'SseEvent(event: $event, bytes: ${data.length})';
}

/// Generic Server-Sent Events client over `package:http`.
///
/// `connect` opens a single streaming HTTP request and emits decoded
/// [SseEvent]s as they arrive. The stream completes naturally when the
/// server closes the connection. Network failures surface as errors.
///
/// Reconnection is *not* automatic at this layer — callers (e.g. ChatStream)
/// decide whether and how to retry based on whether the conversation is
/// resumable. This keeps the helper composable.
class SseClient {
  SseClient({http.Client? client}) : _client = client ?? http.Client();

  final http.Client _client;
  bool _closed = false;

  /// POSTs JSON [body] to [url] with `Accept: text/event-stream` and yields
  /// every fully-formed SSE event. Pass [headers] to add auth or custom
  /// content negotiation.
  Stream<SseEvent> connect({
    required Uri url,
    required Map<String, dynamic> body,
    Map<String, String> headers = const <String, String>{},
  }) async* {
    if (_closed) {
      throw StateError('SseClient is closed');
    }
    final request = http.Request('POST', url)
      ..headers.addAll(<String, String>{
        'Content-Type': 'application/json',
        'Accept': 'text/event-stream',
        ...headers,
      })
      ..body = jsonEncode(body);

    final streamed = await _client.send(request);
    if (streamed.statusCode < 200 || streamed.statusCode >= 300) {
      final text = await streamed.stream.bytesToString();
      throw SseHttpException(streamed.statusCode, text);
    }

    final lineStream = streamed.stream
        .transform(utf8.decoder)
        .transform(const LineSplitter());

    String currentEvent = 'message';
    final dataLines = <String>[];
    await for (final rawLine in lineStream) {
      final line = rawLine;
      if (line.isEmpty) {
        // Blank line — dispatch the buffered frame if any.
        if (dataLines.isNotEmpty) {
          yield SseEvent(event: currentEvent, data: dataLines.join('\n'));
        }
        currentEvent = 'message';
        dataLines.clear();
        continue;
      }
      if (line.startsWith(':')) {
        // Comment line — ignore per spec.
        continue;
      }
      final colonIdx = line.indexOf(':');
      final field = colonIdx == -1 ? line : line.substring(0, colonIdx);
      var value = colonIdx == -1 ? '' : line.substring(colonIdx + 1);
      if (value.startsWith(' ')) value = value.substring(1);
      if (field == 'event') {
        currentEvent = value;
      } else if (field == 'data') {
        dataLines.add(value);
      }
      // Other fields (id, retry) ignored — we don't implement Last-Event-ID.
    }
    // Flush a trailing event without terminating blank line.
    if (dataLines.isNotEmpty) {
      yield SseEvent(event: currentEvent, data: dataLines.join('\n'));
    }
  }

  void close() {
    if (_closed) return;
    _closed = true;
    _client.close();
  }
}

class SseHttpException implements Exception {
  const SseHttpException(this.statusCode, this.body);

  final int statusCode;
  final String body;

  @override
  String toString() => 'SseHttpException($statusCode): $body';
}
