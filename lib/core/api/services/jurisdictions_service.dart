import 'package:dio/dio.dart';

import '../endpoints.dart';
import '../models/state.dart';
import '_dio_helpers.dart';

/// Wraps GET /jurisdictions/states (FastAPI `app/routers/programs.py::states`).
class JurisdictionsService {
  JurisdictionsService(this._dio);

  final Dio _dio;

  /// List supported state jurisdictions, alphabetised by name.
  Future<List<StateInfo>> listStates() => runRequest(() async {
    final res = await _dio.get<Object?>(Endpoints.states);
    return asJsonList(
      res.data,
      name: 'states',
    ).map(StateInfo.fromJson).toList(growable: false);
  });
}
