import 'package:dio/dio.dart';

import '../endpoints.dart';
import '../models/session.dart';
import '_dio_helpers.dart';

/// Wraps the screening session routes — FastAPI `app/routers/sessions.py`.
class SessionsService {
  SessionsService(this._dio);

  final Dio _dio;

  /// POST /sessions — create a screening session, returning the first envelope.
  Future<SessionEnvelope> create(SessionCreateRequest body) =>
      runRequest(() async {
        final res = await _dio.post<Object?>(
          Endpoints.sessions,
          data: body.toJson(),
        );
        return SessionEnvelope.fromJson(
          asJsonMap(res.data, name: 'createSession'),
        );
      });

  /// POST /sessions/{id}/answers — record answers, return next question.
  Future<SessionEnvelope> submitAnswers(
    String sessionId,
    SessionAnswersRequest body,
  ) => runRequest(() async {
    final res = await _dio.post<Object?>(
      Endpoints.sessionAnswers(sessionId),
      data: body.toJson(),
    );
    return SessionEnvelope.fromJson(asJsonMap(res.data, name: 'submitAnswers'));
  });

  /// GET /sessions/{id}/results — current results view.
  Future<SessionResults> getResults(String sessionId) => runRequest(() async {
    final res = await _dio.get<Object?>(Endpoints.sessionResults(sessionId));
    return SessionResults.fromJson(asJsonMap(res.data, name: 'sessionResults'));
  });

  /// GET /sessions/{id}/plan — narrative plan view.
  Future<SessionPlan> getPlan(String sessionId) => runRequest(() async {
    final res = await _dio.get<Object?>(Endpoints.sessionPlan(sessionId));
    return SessionPlan.fromJson(asJsonMap(res.data, name: 'sessionPlan'));
  });

  /// POST /sessions/{id}/compare — compare against alternate scenarios.
  Future<SessionCompare> compare(String sessionId, CompareRequest body) =>
      runRequest(() async {
        final res = await _dio.post<Object?>(
          Endpoints.sessionCompare(sessionId),
          data: body.toJson(),
        );
        return SessionCompare.fromJson(
          asJsonMap(res.data, name: 'sessionCompare'),
        );
      });
}
