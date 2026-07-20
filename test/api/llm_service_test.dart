import 'package:benefits_digger/core/api/models/chat.dart';
import 'package:benefits_digger/core/api/models/llm.dart';
import 'package:benefits_digger/core/api/services/llm_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockDio extends Mock implements Dio {}

void main() {
  test('complete posts to /llm/complete and parses response', () async {
    final dio = _MockDio();
    when(
      () => dio.post<Object?>('/llm/complete', data: any(named: 'data')),
    ).thenAnswer(
      (_) async => Response<Object?>(
        requestOptions: RequestOptions(path: '/llm/complete'),
        statusCode: 200,
        data: <String, dynamic>{
          'content': 'hi',
          'model': 'gemini-2.0',
          'usage': <String, dynamic>{'prompt_tokens': 5},
          'finish_reason': 'stop',
          'fallback_used': false,
        },
      ),
    );
    final out = await LlmService(dio).complete(
      const LlmCompleteRequest(
        messages: <ChatMessage>[ChatMessage(role: 'user', content: 'hi')],
        model: 'gemini-2.0',
      ),
    );
    expect(out.content, 'hi');
    expect(out.model, 'gemini-2.0');
  });
}
