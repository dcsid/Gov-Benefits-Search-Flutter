import 'package:benefits_digger/core/api/api_exception.dart';
import 'package:benefits_digger/core/api/services/health_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockDio extends Mock implements Dio {}

class _FakeOptions extends Fake implements Options {}

void main() {
  setUpAll(() {
    registerFallbackValue(_FakeOptions());
  });

  group('HealthService', () {
    test('GET /health returns parsed HealthCheck', () async {
      final dio = _MockDio();
      when(() => dio.get<Object?>('/health')).thenAnswer(
        (_) async => Response<Object?>(
          requestOptions: RequestOptions(path: '/health'),
          statusCode: 200,
          data: <String, dynamic>{
            'status': 'ok',
            'db': 'ok',
            'llm': 'missing_credential',
          },
        ),
      );

      final result = await HealthService(dio).checkHealth();
      expect(result.status, 'ok');
      expect(result.llm, 'missing_credential');
      verify(() => dio.get<Object?>('/health')).called(1);
    });

    test('5xx surfaces as HttpException', () async {
      final dio = _MockDio();
      final reqOpts = RequestOptions(path: '/health');
      when(() => dio.get<Object?>('/health')).thenThrow(
        DioException(
          requestOptions: reqOpts,
          response: Response<Object?>(
            requestOptions: reqOpts,
            statusCode: 500,
            statusMessage: 'Internal',
          ),
          type: DioExceptionType.badResponse,
        ),
      );
      await expectLater(
        () => HealthService(dio).checkHealth(),
        throwsA(isA<HttpException>()
            .having((e) => e.statusCode, 'statusCode', 500)),
      );
    });

    test('connection errors surface as NetworkException', () async {
      final dio = _MockDio();
      when(() => dio.get<Object?>('/health')).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: '/health'),
          type: DioExceptionType.connectionError,
        ),
      );
      await expectLater(
        () => HealthService(dio).checkHealth(),
        throwsA(isA<NetworkException>()),
      );
    });

    test('attached ApiException is preserved (interceptor path)', () async {
      final dio = _MockDio();
      when(() => dio.get<Object?>('/health')).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: '/health'),
          error: const TimeoutException('slow'),
          type: DioExceptionType.connectionTimeout,
        ),
      );
      await expectLater(
        () => HealthService(dio).checkHealth(),
        throwsA(isA<TimeoutException>()),
      );
    });
  });
}
