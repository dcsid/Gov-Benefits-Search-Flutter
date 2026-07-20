import 'package:dio/dio.dart';

import '../endpoints.dart';
import '../models/intake.dart';
import '_dio_helpers.dart';

/// Wraps the intake copilot routes — FastAPI `app/routers/intake.py`.
class IntakeService {
  IntakeService(this._dio);

  final Dio _dio;

  /// POST /intake/interpret — interpret a life-event description.
  Future<IntakeResponse> interpret(IntakeInterpretRequest body) =>
      runRequest(() async {
        final res = await _dio.post<Object?>(
          Endpoints.intakeInterpret,
          data: body.toJson(),
        );
        return IntakeResponse.fromJson(
          asJsonMap(res.data, name: 'intakeInterpret'),
        );
      });

  /// POST /intake/probe — continue an intake conversation with a follow-up probe.
  Future<IntakeResponse> probe(IntakeProbeRequest body) => runRequest(() async {
    final res = await _dio.post<Object?>(
      Endpoints.intakeProbe,
      data: body.toJson(),
    );
    return IntakeResponse.fromJson(asJsonMap(res.data, name: 'intakeProbe'));
  });
}
