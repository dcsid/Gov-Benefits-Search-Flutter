import 'package:benefits_digger/core/api/models/intake.dart';
import 'package:benefits_digger/core/api/services/intake_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockDio extends Mock implements Dio {}

Map<String, dynamic> _intakeFixture() => <String, dynamic>{
  'summary': 'ok',
  'chat_reply': 'Got it.',
  'suggested_categories': <Map<String, dynamic>>[],
  'structured_facts': <Map<String, dynamic>>[],
  'current_facts': <String, dynamic>{},
  'prefill_answers': <String, dynamic>{},
  'follow_up_questions': <Map<String, dynamic>>[],
  'navigation_actions': <Map<String, dynamic>>[],
  'interpretation_method': 'heuristic',
  'llm_used': false,
  'assistant_method': 'deterministic',
};

void main() {
  group('IntakeService', () {
    test('interpret hits POST /intake/interpret', () async {
      final dio = _MockDio();
      when(
        () => dio.post<Object?>('/intake/interpret', data: any(named: 'data')),
      ).thenAnswer(
        (_) async => Response<Object?>(
          requestOptions: RequestOptions(path: '/intake/interpret'),
          statusCode: 200,
          data: _intakeFixture(),
        ),
      );
      final out = await IntakeService(
        dio,
      ).interpret(const IntakeInterpretRequest(description: 'I lost my job'));
      expect(out.summary, 'ok');
      verify(
        () => dio.post<Object?>('/intake/interpret', data: any(named: 'data')),
      ).called(1);
    });

    test('probe hits POST /intake/probe with messages', () async {
      final dio = _MockDio();
      when(
        () => dio.post<Object?>('/intake/probe', data: any(named: 'data')),
      ).thenAnswer(
        (_) async => Response<Object?>(
          requestOptions: RequestOptions(path: '/intake/probe'),
          statusCode: 200,
          data: _intakeFixture(),
        ),
      );
      final out = await IntakeService(dio).probe(
        const IntakeProbeRequest(
          description: 'still looking',
          messages: <IntakeMessage>[
            IntakeMessage(role: 'user', content: 'help'),
          ],
        ),
      );
      expect(out.assistantMethod, 'deterministic');
      final captured =
          verify(
                () => dio.post<Object?>(
                  '/intake/probe',
                  data: captureAny(named: 'data'),
                ),
              ).captured.single
              as Map<String, dynamic>;
      expect((captured['messages'] as List).length, 1);
    });
  });
}
