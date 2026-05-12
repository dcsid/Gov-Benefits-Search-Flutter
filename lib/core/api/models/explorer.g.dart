// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explorer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExplorerSearchRequestImpl _$$ExplorerSearchRequestImplFromJson(
  Map<String, dynamic> json,
) => _$ExplorerSearchRequestImpl(
  query: json['query'] as String? ?? '',
  description: json['description'] as String? ?? '',
  scope: json['scope'] as String? ?? 'both',
  stateCode: json['state_code'] as String?,
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  limit: (json['limit'] as num?)?.toInt() ?? 20,
  useLlm: json['use_llm'] as bool? ?? true,
);

Map<String, dynamic> _$$ExplorerSearchRequestImplToJson(
  _$ExplorerSearchRequestImpl instance,
) => <String, dynamic>{
  'query': instance.query,
  'description': instance.description,
  'scope': instance.scope,
  'state_code': instance.stateCode,
  'categories': instance.categories,
  'limit': instance.limit,
  'use_llm': instance.useLlm,
};

_$ExplorerSearchResponseImpl _$$ExplorerSearchResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ExplorerSearchResponseImpl(
  mode: json['mode'] as String,
  interpretation:
      json['interpretation'] as Map<String, dynamic>? ??
      const <String, dynamic>{},
  programs:
      (json['programs'] as List<dynamic>?)
          ?.map((e) => ExplorerHit.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ExplorerHit>[],
);

Map<String, dynamic> _$$ExplorerSearchResponseImplToJson(
  _$ExplorerSearchResponseImpl instance,
) => <String, dynamic>{
  'mode': instance.mode,
  'interpretation': instance.interpretation,
  'programs': instance.programs.map((e) => e.toJson()).toList(),
};

_$ExplorerHitImpl _$$ExplorerHitImplFromJson(Map<String, dynamic> json) =>
    _$ExplorerHitImpl(
      slug: json['slug'] as String,
      name: json['name'] as String,
      kind: json['kind'] as String?,
      category: json['category'] as String?,
      family: json['family'] as String?,
      summary: json['summary'] as String?,
      jurisdiction: json['jurisdiction'] == null
          ? null
          : Jurisdiction.fromJson(json['jurisdiction'] as Map<String, dynamic>),
      agency: json['agency'] as String?,
      applyUrl: json['apply_url'] as String?,
      dataGatheredFrom:
          (json['data_gathered_from'] as List<dynamic>?)
              ?.map((e) => SourceLink.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SourceLink>[],
      matchReasons:
          (json['match_reasons'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      searchScore: (json['search_score'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ExplorerHitImplToJson(_$ExplorerHitImpl instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'name': instance.name,
      'kind': instance.kind,
      'category': instance.category,
      'family': instance.family,
      'summary': instance.summary,
      'jurisdiction': instance.jurisdiction?.toJson(),
      'agency': instance.agency,
      'apply_url': instance.applyUrl,
      'data_gathered_from': instance.dataGatheredFrom
          .map((e) => e.toJson())
          .toList(),
      'match_reasons': instance.matchReasons,
      'search_score': instance.searchScore,
    };
