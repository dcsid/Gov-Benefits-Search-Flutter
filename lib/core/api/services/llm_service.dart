import 'package:dio/dio.dart';

import '../endpoints.dart';
import '../models/llm.dart';
import '_dio_helpers.dart';

/// Wraps POST /llm/complete — FastAPI `app/routers/chat.py::llm_complete`.
class LlmService {
  LlmService(this._dio);

  final Dio _dio;

  Future<LlmCompleteResponse> complete(LlmCompleteRequest body) =>
      runRequest(() async {
        final res = await _dio.post<Object?>(
          Endpoints.llmComplete,
          data: body.toJson(),
        );
        return LlmCompleteResponse.fromJson(
          asJsonMap(res.data, name: 'llmComplete'),
        );
      });
}
