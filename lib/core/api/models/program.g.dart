// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JurisdictionImpl _$$JurisdictionImplFromJson(Map<String, dynamic> json) =>
    _$JurisdictionImpl(
      code: json['code'] as String,
      level: json['level'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$JurisdictionImplToJson(_$JurisdictionImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'level': instance.level,
      'name': instance.name,
    };

_$SourceLinkImpl _$$SourceLinkImplFromJson(Map<String, dynamic> json) =>
    _$SourceLinkImpl(
      id: json['id'] as String?,
      title: json['title'] as String,
      url: json['url'] as String,
      agency: json['agency'] as String?,
      verifiedAt: json['verified_at'] as String?,
      kind: json['kind'] as String?,
    );

Map<String, dynamic> _$$SourceLinkImplToJson(_$SourceLinkImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'agency': instance.agency,
      'verified_at': instance.verifiedAt,
      'kind': instance.kind,
    };

_$ProgramImpl _$$ProgramImplFromJson(Map<String, dynamic> json) =>
    _$ProgramImpl(
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
    );

Map<String, dynamic> _$$ProgramImplToJson(_$ProgramImpl instance) =>
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
    };

_$ProgramDetailImpl _$$ProgramDetailImplFromJson(Map<String, dynamic> json) =>
    _$ProgramDetailImpl(
      slug: json['slug'] as String,
      name: json['name'] as String,
      kind: json['kind'] as String?,
      category: json['category'] as String?,
      family: json['family'] as String?,
      summary: json['summary'] as String?,
      applyUrl: json['apply_url'] as String?,
      documents:
          (json['documents'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const <Map<String, dynamic>>[],
      jurisdiction: json['jurisdiction'] == null
          ? null
          : Jurisdiction.fromJson(json['jurisdiction'] as Map<String, dynamic>),
      agency: json['agency'] as String?,
      versionLabel: json['version_label'] as String?,
      rules:
          (json['rules'] as List<dynamic>?)
              ?.map((e) => EligibilityRule.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <EligibilityRule>[],
      dataGatheredFrom:
          (json['data_gathered_from'] as List<dynamic>?)
              ?.map((e) => SourceLink.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SourceLink>[],
      howToGetBenefit:
          (json['how_to_get_benefit'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const <Map<String, dynamic>>[],
      sources:
          (json['sources'] as List<dynamic>?)
              ?.map((e) => SourceLink.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SourceLink>[],
    );

Map<String, dynamic> _$$ProgramDetailImplToJson(_$ProgramDetailImpl instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'name': instance.name,
      'kind': instance.kind,
      'category': instance.category,
      'family': instance.family,
      'summary': instance.summary,
      'apply_url': instance.applyUrl,
      'documents': instance.documents,
      'jurisdiction': instance.jurisdiction?.toJson(),
      'agency': instance.agency,
      'version_label': instance.versionLabel,
      'rules': instance.rules.map((e) => e.toJson()).toList(),
      'data_gathered_from': instance.dataGatheredFrom
          .map((e) => e.toJson())
          .toList(),
      'how_to_get_benefit': instance.howToGetBenefit,
      'sources': instance.sources.map((e) => e.toJson()).toList(),
    };

_$EligibilityRuleImpl _$$EligibilityRuleImplFromJson(
  Map<String, dynamic> json,
) => _$EligibilityRuleImpl(
  questionKey: json['question_key'] as String,
  label: json['label'] as String,
  expectedValues:
      json['expected_values'] as List<dynamic>? ?? const <dynamic>[],
);

Map<String, dynamic> _$$EligibilityRuleImplToJson(
  _$EligibilityRuleImpl instance,
) => <String, dynamic>{
  'question_key': instance.questionKey,
  'label': instance.label,
  'expected_values': instance.expectedValues,
};

_$ProgramSummaryImpl _$$ProgramSummaryImplFromJson(Map<String, dynamic> json) =>
    _$ProgramSummaryImpl(
      slug: json['slug'] as String,
      name: json['name'] as String,
      summary: json['summary'] as String?,
    );

Map<String, dynamic> _$$ProgramSummaryImplToJson(
  _$ProgramSummaryImpl instance,
) => <String, dynamic>{
  'slug': instance.slug,
  'name': instance.name,
  'summary': instance.summary,
};
