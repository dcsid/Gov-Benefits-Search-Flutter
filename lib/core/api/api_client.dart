import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../env.dart';
import 'api_exception.dart';
import 'interceptors/cache_interceptor.dart';
import 'interceptors/dedup_interceptor.dart';

/// Process-wide cache (5 min /programs/*, 1 min /sessions/*, 1 h
/// /jurisdictions/*). Exposed so feature controllers can invalidate
/// after mutating POSTs.
final apiCacheProvider = Provider<CacheInterceptor>(
  (ref) => CacheInterceptor(),
);

/// Process-wide GET deduper. Exposed for diagnostics (coalescedCount).
final apiDedupProvider = Provider<DedupInterceptor>(
  (ref) => DedupInterceptor(),
);

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: Env.apiBase,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 30),
      headers: <String, String>{
        'Accept': 'application/json',
        // Explicit keep-alive — HTTP/1.1 default but spelling it out keeps
        // intermediaries from downgrading the connection pool.
        'Connection': 'keep-alive',
      },
    ),
  );

  // Order matters. Cache short-circuits before anything else. Dedup runs
  // next so concurrent identical GETs reuse one socket. Retry handles
  // network blips on the calls that actually reach the wire. Error mapper
  // is last so retry/dedup/cache errors are translated uniformly.
  dio.interceptors.add(ref.read(apiCacheProvider));
  dio.interceptors.add(ref.read(apiDedupProvider));

  dio.interceptors.add(
    RetryInterceptor(
      dio: dio,
      retries: 3,
      retryDelays: const <Duration>[
        Duration(milliseconds: 300),
        Duration(milliseconds: 800),
        Duration(milliseconds: 2000),
      ],
    ),
  );

  dio.interceptors.add(
    InterceptorsWrapper(
      onError: (DioException error, ErrorInterceptorHandler handler) {
        handler.reject(
          DioException(
            requestOptions: error.requestOptions,
            response: error.response,
            type: error.type,
            error: _mapDioError(error),
            stackTrace: error.stackTrace,
          ),
        );
      },
    ),
  );

  return dio;
});

ApiException _mapDioError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.receiveTimeout:
      return const TimeoutException();
    case DioExceptionType.connectionError:
      return const NetworkException();
    case DioExceptionType.badResponse:
      final response = error.response;
      return HttpException(
        statusCode: response?.statusCode ?? 0,
        message: response?.statusMessage ?? 'HTTP error',
        body: response?.data,
      );
    case DioExceptionType.cancel:
    case DioExceptionType.badCertificate:
    case DioExceptionType.unknown:
      return UnknownApiException(error.message ?? 'Unknown error');
  }
}
