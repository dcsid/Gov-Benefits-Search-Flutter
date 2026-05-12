import 'package:benefits_digger/core/api/api_exception.dart';
import 'package:benefits_digger/core/api/services/programs_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockDio extends Mock implements Dio {}

void main() {
  group('ProgramsService', () {
    test('listPrograms hits /programs with query parameters', () async {
      final dio = _MockDio();
      when(() => dio.get<Object?>(
            any(),
            queryParameters: any(named: 'queryParameters'),
          )).thenAnswer(
        (_) async => Response<Object?>(
          requestOptions: RequestOptions(path: '/programs'),
          statusCode: 200,
          data: <Map<String, dynamic>>[
            <String, dynamic>{
              'slug': 'snap',
              'name': 'SNAP',
              'data_gathered_from': <Map<String, dynamic>>[],
            },
          ],
        ),
      );
      final out = await ProgramsService(dio)
          .listPrograms('NY', query: 'food', categories: <String>['food']);
      expect(out, hasLength(1));
      expect(out.first.slug, 'snap');
      final captured = verify(() => dio.get<Object?>(
            captureAny(),
            queryParameters: captureAny(named: 'queryParameters'),
          )).captured;
      // Path includes the embedded jurisdiction_code from Endpoints.programs.
      expect(captured.first.toString(), contains('jurisdiction_code=NY'));
      final params = captured.last as Map<String, dynamic>;
      expect(params['state_code'], 'NY');
      expect(params['categories'], 'food');
      expect(params['scope'], 'both');
    });

    test('getProgram fetches by slug', () async {
      final dio = _MockDio();
      when(() => dio.get<Object?>('/programs/snap')).thenAnswer(
        (_) async => Response<Object?>(
          requestOptions: RequestOptions(path: '/programs/snap'),
          statusCode: 200,
          data: <String, dynamic>{
            'slug': 'snap',
            'name': 'SNAP',
            'rules': <Map<String, dynamic>>[],
            'data_gathered_from': <Map<String, dynamic>>[],
            'documents': <Map<String, dynamic>>[],
            'how_to_get_benefit': <Map<String, dynamic>>[],
            'sources': <Map<String, dynamic>>[],
          },
        ),
      );
      final out = await ProgramsService(dio).getProgram('snap');
      expect(out.slug, 'snap');
    });

    test('404 surfaces as HttpException(404)', () async {
      final dio = _MockDio();
      final req = RequestOptions(path: '/programs/missing');
      when(() => dio.get<Object?>('/programs/missing')).thenThrow(
        DioException(
          requestOptions: req,
          response: Response<Object?>(
            requestOptions: req,
            statusCode: 404,
            statusMessage: 'Not Found',
          ),
          type: DioExceptionType.badResponse,
        ),
      );
      await expectLater(
        () => ProgramsService(dio).getProgram('missing'),
        throwsA(isA<HttpException>()
            .having((e) => e.statusCode, 'statusCode', 404)),
      );
    });
  });
}
