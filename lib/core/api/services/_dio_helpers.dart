import 'package:dio/dio.dart';

import '../api_exception.dart';

/// Run a Dio request and surface a typed [ApiException] on failure. The
/// dio interceptor in `api_client.dart` already attaches an [ApiException]
/// to `DioException.error`, so we prefer that when present.
Future<T> runRequest<T>(Future<T> Function() body) async {
  try {
    return await body();
  } on DioException catch (e) {
    final attached = e.error;
    if (attached is ApiException) throw attached;
    throw _fallbackFromDio(e);
  }
}

ApiException _fallbackFromDio(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.receiveTimeout:
      return const TimeoutException();
    case DioExceptionType.connectionError:
      return const NetworkException();
    case DioExceptionType.badResponse:
      final response = e.response;
      return HttpException(
        statusCode: response?.statusCode ?? 0,
        message: response?.statusMessage ?? 'HTTP error',
        body: response?.data,
      );
    case DioExceptionType.cancel:
    case DioExceptionType.badCertificate:
    case DioExceptionType.unknown:
      return UnknownApiException(e.message ?? 'Unknown error');
  }
}

Map<String, dynamic> asJsonMap(Object? data, {String name = 'response'}) {
  if (data is Map<String, dynamic>) return data;
  if (data is Map) return Map<String, dynamic>.from(data);
  throw HttpException(
    statusCode: 0,
    message: 'Expected JSON object for $name, got ${data.runtimeType}',
    body: data,
  );
}

List<Map<String, dynamic>> asJsonList(
  Object? data, {
  String name = 'response',
}) {
  if (data is List) {
    return data
        .map(
          (e) => e is Map<String, dynamic>
              ? e
              : Map<String, dynamic>.from(e as Map),
        )
        .toList(growable: false);
  }
  throw HttpException(
    statusCode: 0,
    message: 'Expected JSON array for $name, got ${data.runtimeType}',
    body: data,
  );
}
