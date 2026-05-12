import 'package:dio/dio.dart';

import '../endpoints.dart';
import '../models/explorer.dart';
import '_dio_helpers.dart';

/// Wraps POST /explorer/search (FastAPI `app/routers/explorer.py`).
class ExplorerService {
  ExplorerService(this._dio);

  final Dio _dio;

  /// Run a hybrid heuristic + optional LLM search.
  Future<ExplorerSearchResponse> search(ExplorerSearchRequest body) =>
      runRequest(() async {
        final res = await _dio.post<Object?>(
          Endpoints.explorerSearch,
          data: body.toJson(),
        );
        return ExplorerSearchResponse.fromJson(
          asJsonMap(res.data, name: 'explorerSearch'),
        );
      });
}
