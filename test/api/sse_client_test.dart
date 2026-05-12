import 'dart:async';
import 'dart:convert';

import 'package:benefits_digger/core/api/sse/sse_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

/// Tiny fake `http.Client` that returns a pre-canned streaming response.
class _FakeStreamingClient extends http.BaseClient {
  _FakeStreamingClient(this._stream);

  final Stream<List<int>> _stream;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    return http.StreamedResponse(_stream, 200, headers: <String, String>{
      'content-type': 'text/event-stream',
    });
  }
}

class _FakeErrorClient extends http.BaseClient {
  _FakeErrorClient(this.statusCode, this.body);
  final int statusCode;
  final String body;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    final stream = Stream<List<int>>.fromIterable(<List<int>>[utf8.encode(body)]);
    return http.StreamedResponse(stream, statusCode);
  }
}

void main() {
  group('SseClient', () {
    test('parses event/data frames in order', () async {
      const raw = '''
event: token
data: {"delta":"Hi"}

event: token
data: {"delta":" there"}

event: done
data: {"finish_reason":"stop"}

''';
      final client = SseClient(
        client: _FakeStreamingClient(
          Stream<List<int>>.fromIterable(<List<int>>[utf8.encode(raw)]),
        ),
      );
      final events = await client
          .connect(
            url: Uri.parse('https://example.test/chat/stream'),
            body: <String, dynamic>{'messages': <Map<String, String>>[]},
          )
          .toList();
      expect(events, hasLength(3));
      expect(events[0].event, 'token');
      expect(events[0].data, '{"delta":"Hi"}');
      expect(events[2].event, 'done');
    });

    test('multi-line data frames are joined with newlines', () async {
      const raw = '''
event: tool_call
data: {"name":"foo",
data: "args":{}}

''';
      final client = SseClient(
        client: _FakeStreamingClient(
          Stream<List<int>>.fromIterable(<List<int>>[utf8.encode(raw)]),
        ),
      );
      final events = await client
          .connect(
            url: Uri.parse('https://example.test/chat/stream'),
            body: <String, dynamic>{},
          )
          .toList();
      expect(events, hasLength(1));
      expect(events.single.data, '{"name":"foo",\n"args":{}}');
    });

    test('comment lines and unknown fields are ignored', () async {
      const raw = ''': keepalive
event: token
data: {"delta":"x"}
id: 7

''';
      final client = SseClient(
        client: _FakeStreamingClient(
          Stream<List<int>>.fromIterable(<List<int>>[utf8.encode(raw)]),
        ),
      );
      final events = await client
          .connect(
            url: Uri.parse('https://example.test/chat/stream'),
            body: <String, dynamic>{},
          )
          .toList();
      expect(events.single.event, 'token');
    });

    test('non-2xx response throws SseHttpException', () async {
      final client = SseClient(client: _FakeErrorClient(503, 'unavailable'));
      await expectLater(
        client
            .connect(
              url: Uri.parse('https://example.test/chat/stream'),
              body: <String, dynamic>{},
            )
            .toList(),
        throwsA(isA<SseHttpException>()
            .having((e) => e.statusCode, 'statusCode', 503)),
      );
    });
  });
}
