import 'package:freezed_annotation/freezed_annotation.dart';

part 'health.freezed.dart';
part 'health.g.dart';

// GET /health — Python emits `{ status, db, llm }` with the exact strings
// 'ok' | 'degraded' | 'error' | 'missing_credential' | 'unknown'.
@freezed
class HealthCheck with _$HealthCheck {
  const factory HealthCheck({
    required String status,
    required String db,
    required String llm,
  }) = _HealthCheck;

  factory HealthCheck.fromJson(Map<String, dynamic> json) =>
      _$HealthCheckFromJson(json);
}
