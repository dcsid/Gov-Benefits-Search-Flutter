import 'package:dio/dio.dart';

import '../endpoints.dart';
import '../models/health.dart';
import '_dio_helpers.dart';

/// Wraps GET /health (FastAPI `app/routers/health.py::health_check`).
class HealthService {
  HealthService(this._dio);

  final Dio _dio;

  /// Liveness + dependency probe. Returns the rolled-up `{status,db,llm}` body.
  Future<HealthCheck> checkHealth() => runRequest(() async {
    final res = await _dio.get<Object?>(Endpoints.health);
    return HealthCheck.fromJson(asJsonMap(res.data, name: 'health'));
  });
}
