import 'package:benefits_digger/core/api/services/admin_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockDio extends Mock implements Dio {}

class _FakeOptions extends Fake implements Options {}

void main() {
  setUpAll(() {
    registerFallbackValue(_FakeOptions());
  });

  test('listReviewTasks sends X-Admin-Key when provided', () async {
    final dio = _MockDio();
    when(
      () => dio.get<Object?>(
        '/admin/review-tasks',
        options: any(named: 'options'),
      ),
    ).thenAnswer(
      (_) async => Response<Object?>(
        requestOptions: RequestOptions(path: '/admin/review-tasks'),
        statusCode: 200,
        data: <Map<String, dynamic>>[
          <String, dynamic>{
            'id': 't1',
            'status': 'open',
            'created_at': '2026-05-09T10:00:00Z',
            'diff_type': 'eligibility',
            'materiality_score': 80,
          },
        ],
      ),
    );
    final out = await AdminService(dio).listReviewTasks(adminKey: 'secret');
    expect(out.single.id, 't1');
    final opts =
        verify(
              () => dio.get<Object?>(
                '/admin/review-tasks',
                options: captureAny(named: 'options'),
              ),
            ).captured.single
            as Options;
    expect(opts.headers?['X-Admin-Key'], 'secret');
  });

  test('triggerSync posts /admin/sync and parses report', () async {
    final dio = _MockDio();
    when(
      () => dio.post<Object?>('/admin/sync', options: any(named: 'options')),
    ).thenAnswer(
      (_) async => Response<Object?>(
        requestOptions: RequestOptions(path: '/admin/sync'),
        statusCode: 200,
        data: <String, dynamic>{
          'federal': 'synced',
          'states': 'synced',
          'review_tasks_created': 1,
          'crawled_programs': 2,
          'crawl_sources_added': 0,
          'review_tasks': <Map<String, dynamic>>[],
        },
      ),
    );
    final out = await AdminService(dio).triggerSync();
    expect(out.federal, 'synced');
    expect(out.crawledPrograms, 2);
  });
}
