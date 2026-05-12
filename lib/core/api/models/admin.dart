// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin.freezed.dart';
part 'admin.g.dart';

// GET /admin/review-tasks — Python returns rows in the shape below; the TS
// stub had a slimmer `ReviewTask` (no `created_at`, `notes`, `source_title`).
@freezed
class ReviewTask with _$ReviewTask {
  const factory ReviewTask({
    required String id,
    required String status,
    @JsonKey(name: 'created_at') String? createdAt,
    String? notes,
    @JsonKey(name: 'diff_type') String? diffType,
    @JsonKey(name: 'materiality_score') @Default(0) int materialityScore,
    @JsonKey(name: 'source_title') String? sourceTitle,
    @JsonKey(name: 'source_url') String? sourceUrl,
  }) = _ReviewTask;

  factory ReviewTask.fromJson(Map<String, dynamic> json) =>
      _$ReviewTaskFromJson(json);
}

// POST /admin/sync — Python returns the sync summary plus an embedded
// `review_tasks` list (the same shape as ReviewTask).
@freezed
class SyncReport with _$SyncReport {
  const factory SyncReport({
    @Default('skipped') String federal,
    @Default('skipped') String states,
    @JsonKey(name: 'review_tasks_created')
    @Default(0)
    int reviewTasksCreated,
    @JsonKey(name: 'crawled_programs') @Default(0) int crawledPrograms,
    @JsonKey(name: 'crawl_sources_added')
    @Default(0)
    int crawlSourcesAdded,
    @JsonKey(name: 'review_tasks')
    @Default(<ReviewTask>[])
    List<ReviewTask> reviewTasks,
  }) = _SyncReport;

  factory SyncReport.fromJson(Map<String, dynamic> json) =>
      _$SyncReportFromJson(json);
}
