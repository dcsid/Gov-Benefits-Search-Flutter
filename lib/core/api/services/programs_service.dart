import 'package:dio/dio.dart';

import '../endpoints.dart';
import '../models/program.dart';
import '_dio_helpers.dart';

/// Wraps the program catalog routes — FastAPI `app/routers/programs.py`.
class ProgramsService {
  ProgramsService(this._dio);

  final Dio _dio;

  /// GET /programs — search the catalog. `jurisdictionCode` is wired through
  /// as the `state_code` query param when non-empty (matches the live API).
  Future<List<Program>> listPrograms(
    String jurisdictionCode, {
    String query = '',
    String scope = 'both',
    List<String> categories = const <String>[],
    int limit = 40,
  }) =>
      runRequest(() async {
        final res = await _dio.get<Object?>(
          Endpoints.programs(jurisdictionCode),
          queryParameters: <String, dynamic>{
            if (query.isNotEmpty) 'query': query,
            'scope': scope,
            if (jurisdictionCode.isNotEmpty) 'state_code': jurisdictionCode,
            if (categories.isNotEmpty) 'categories': categories.join(','),
            'limit': limit,
          },
        );
        return asJsonList(res.data, name: 'programs')
            .map(Program.fromJson)
            .toList(growable: false);
      });

  /// GET /programs/{slug} — fetch a single program detail.
  Future<ProgramDetail> getProgram(String slug) => runRequest(() async {
        final res = await _dio.get<Object?>(Endpoints.programDetail(slug));
        return ProgramDetail.fromJson(
          asJsonMap(res.data, name: 'programDetail'),
        );
      });
}
