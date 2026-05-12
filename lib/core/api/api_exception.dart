abstract class ApiException implements Exception {
  const ApiException(this.message);

  final String message;

  @override
  String toString() => '$runtimeType: $message';
}

class NetworkException extends ApiException {
  const NetworkException([super.message = 'Network connection failed']);
}

class TimeoutException extends ApiException {
  const TimeoutException([super.message = 'Request timed out']);
}

class HttpException extends ApiException {
  const HttpException({
    required this.statusCode,
    required String message,
    this.body,
  }) : super(message);

  final int statusCode;
  final Object? body;

  @override
  String toString() => 'HttpException($statusCode): $message';
}

class UnknownApiException extends ApiException {
  const UnknownApiException([super.message = 'Unknown API error']);
}
