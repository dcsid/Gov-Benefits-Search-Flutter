import 'package:dio/dio.dart';

import '../endpoints.dart';
import '../models/admin.dart';
import '_dio_helpers.dart';

/// Wraps the admin routes — FastAPI `app/routers/admin.py`.
/// Both endpoints accept an optional `X-Admin-Key` header which is required
/// when the server has `admin_key` configured.
class AdminService {
  AdminService(this._dio);

  final Dio _dio;

  Options? _authOptions(String? adminKey) => adminKey == null
      ? null
      : Options(headers: <String, String>{'X-Admin-Key': adminKey});

  /// GET /admin/review-tasks — list open content review tasks.
  Future<List<ReviewTask>> listReviewTasks({String? adminKey}) =>
      runRequest(() async {
        final res = await _dio.get<Object?>(
          Endpoints.adminReviewTasks,
          options: _authOptions(adminKey),
        );
        return asJsonList(res.data, name: 'reviewTasks')
            .map(ReviewTask.fromJson)
            .toList(growable: false);
      });

  /// POST /admin/sync — trigger a remote-source sync run.
  Future<SyncReport> triggerSync({String? adminKey}) => runRequest(() async {
        final res = await _dio.post<Object?>(
          Endpoints.adminSync,
          options: _authOptions(adminKey),
        );
        return SyncReport.fromJson(asJsonMap(res.data, name: 'syncReport'));
      });
}
