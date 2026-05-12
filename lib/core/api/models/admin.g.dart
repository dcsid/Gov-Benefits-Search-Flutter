// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewTaskImpl _$$ReviewTaskImplFromJson(Map<String, dynamic> json) =>
    _$ReviewTaskImpl(
      id: json['id'] as String,
      status: json['status'] as String,
      createdAt: json['created_at'] as String?,
      notes: json['notes'] as String?,
      diffType: json['diff_type'] as String?,
      materialityScore: (json['materiality_score'] as num?)?.toInt() ?? 0,
      sourceTitle: json['source_title'] as String?,
      sourceUrl: json['source_url'] as String?,
    );

Map<String, dynamic> _$$ReviewTaskImplToJson(_$ReviewTaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'created_at': instance.createdAt,
      'notes': instance.notes,
      'diff_type': instance.diffType,
      'materiality_score': instance.materialityScore,
      'source_title': instance.sourceTitle,
      'source_url': instance.sourceUrl,
    };

_$SyncReportImpl _$$SyncReportImplFromJson(Map<String, dynamic> json) =>
    _$SyncReportImpl(
      federal: json['federal'] as String? ?? 'skipped',
      states: json['states'] as String? ?? 'skipped',
      reviewTasksCreated: (json['review_tasks_created'] as num?)?.toInt() ?? 0,
      crawledPrograms: (json['crawled_programs'] as num?)?.toInt() ?? 0,
      crawlSourcesAdded: (json['crawl_sources_added'] as num?)?.toInt() ?? 0,
      reviewTasks:
          (json['review_tasks'] as List<dynamic>?)
              ?.map((e) => ReviewTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ReviewTask>[],
    );

Map<String, dynamic> _$$SyncReportImplToJson(_$SyncReportImpl instance) =>
    <String, dynamic>{
      'federal': instance.federal,
      'states': instance.states,
      'review_tasks_created': instance.reviewTasksCreated,
      'crawled_programs': instance.crawledPrograms,
      'crawl_sources_added': instance.crawlSourcesAdded,
      'review_tasks': instance.reviewTasks.map((e) => e.toJson()).toList(),
    };
