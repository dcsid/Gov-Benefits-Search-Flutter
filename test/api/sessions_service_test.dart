import 'package:benefits_digger/core/api/models/session.dart';
import 'package:benefits_digger/core/api/services/sessions_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockDio extends Mock implements Dio {}

Map<String, dynamic> _envelope(String id) => <String, dynamic>{
  'session_id': id,
  'next_question': null,
  'provisional_result_count': 0,
  'program_count': 0,
};

void main() {
  group('SessionsService', () {
    test('create posts to /sessions', () async {
      final dio = _MockDio();
      when(
        () => dio.post<Object?>('/sessions', data: any(named: 'data')),
      ).thenAnswer(
        (_) async => Response<Object?>(
          requestOptions: RequestOptions(path: '/sessions'),
          statusCode: 200,
          data: _envelope('s-1'),
        ),
      );
      final out = await SessionsService(
        dio,
      ).create(const SessionCreateRequest(scope: 'state', stateCode: 'NY'));
      expect(out.sessionId, 's-1');
      final captured =
          verify(
                () => dio.post<Object?>(
                  '/sessions',
                  data: captureAny(named: 'data'),
                ),
              ).captured.single
              as Map<String, dynamic>;
      expect(captured['state_code'], 'NY');
    });

    test('submitAnswers hits /sessions/{id}/answers', () async {
      final dio = _MockDio();
      when(
        () => dio.post<Object?>(
          '/sessions/s-1/answers',
          data: any(named: 'data'),
        ),
      ).thenAnswer(
        (_) async => Response<Object?>(
          requestOptions: RequestOptions(path: '/sessions/s-1/answers'),
          statusCode: 200,
          data: _envelope('s-1'),
        ),
      );
      await SessionsService(dio).submitAnswers(
        's-1',
        const SessionAnswersRequest(
          answers: <String, dynamic>{'state_code': 'NY'},
        ),
      );
      verify(
        () => dio.post<Object?>(
          '/sessions/s-1/answers',
          data: any(named: 'data'),
        ),
      ).called(1);
    });

    test('getResults hits /sessions/{id}/results', () async {
      final dio = _MockDio();
      when(() => dio.get<Object?>('/sessions/s-1/results')).thenAnswer(
        (_) async => Response<Object?>(
          requestOptions: RequestOptions(path: '/sessions/s-1/results'),
          statusCode: 200,
          data: <String, dynamic>{
            'session_id': 's-1',
            'federal_results': <Map<String, dynamic>>[],
            'state_results': <Map<String, dynamic>>[],
          },
        ),
      );
      final out = await SessionsService(dio).getResults('s-1');
      expect(out.sessionId, 's-1');
    });

    test('getPlan hits /sessions/{id}/plan', () async {
      final dio = _MockDio();
      when(() => dio.get<Object?>('/sessions/s-1/plan')).thenAnswer(
        (_) async => Response<Object?>(
          requestOptions: RequestOptions(path: '/sessions/s-1/plan'),
          statusCode: 200,
          data: <String, dynamic>{
            'profile': <String, dynamic>{},
            'overview': <String, dynamic>{
              'likely_programs': 0,
              'possible_programs': 0,
              'likely_federal_programs': 0,
              'likely_state_programs': 0,
              'average_rule_coverage': 0,
              'answered_questions': 0,
              'estimated_monthly_total': 0,
            },
            'benefit_stack': <Map<String, dynamic>>[],
            'top_missing_facts': <Map<String, dynamic>>[],
            'action_plan': <Map<String, dynamic>>[],
            'official_source_hub': <Map<String, dynamic>>[],
            'planning_notes': <String>[],
            'document_checklist': <Map<String, dynamic>>[],
          },
        ),
      );
      final out = await SessionsService(dio).getPlan('s-1');
      expect(out.overview.likelyPrograms, 0);
    });

    test('compare posts scenarios', () async {
      final dio = _MockDio();
      when(
        () => dio.post<Object?>(
          '/sessions/s-1/compare',
          data: any(named: 'data'),
        ),
      ).thenAnswer(
        (_) async => Response<Object?>(
          requestOptions: RequestOptions(path: '/sessions/s-1/compare'),
          statusCode: 200,
          data: <String, dynamic>{
            'session_id': 's-1',
            'baseline': <String, dynamic>{},
            'comparisons': <Map<String, dynamic>>[],
          },
        ),
      );
      final out = await SessionsService(dio).compare(
        's-1',
        const CompareRequest(
          scenarios: <CompareScenarioInput>[CompareScenarioInput(name: 'A')],
        ),
      );
      expect(out.sessionId, 's-1');
    });
  });
}
