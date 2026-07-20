// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'program.freezed.dart';
part 'program.g.dart';

@freezed
class Jurisdiction with _$Jurisdiction {
  const factory Jurisdiction({
    required String code,
    required String level,
    required String name,
  }) = _Jurisdiction;

  factory Jurisdiction.fromJson(Map<String, dynamic> json) =>
      _$JurisdictionFromJson(json);
}

@freezed
class SourceLink with _$SourceLink {
  const factory SourceLink({
    String? id,
    required String title,
    required String url,
    String? agency,
    @JsonKey(name: 'verified_at') String? verifiedAt,
    String? kind,
  }) = _SourceLink;

  factory SourceLink.fromJson(Map<String, dynamic> json) =>
      _$SourceLinkFromJson(json);
}

// Catalog/listing entry returned by GET /programs and embedded in explorer results.
// note: Python returns a richer payload than the TS stub (including
// `data_gathered_from`, `kind`, `family`, `apply_url`, no `categories[]`).
@freezed
class Program with _$Program {
  const factory Program({
    required String slug,
    required String name,
    String? kind,
    String? category,
    String? family,
    String? summary,
    Jurisdiction? jurisdiction,
    String? agency,
    @JsonKey(name: 'apply_url') String? applyUrl,
    @JsonKey(name: 'data_gathered_from')
    @Default(<SourceLink>[])
    List<SourceLink> dataGatheredFrom,
  }) = _Program;

  factory Program.fromJson(Map<String, dynamic> json) =>
      _$ProgramFromJson(json);
}

// Detailed view returned by GET /programs/{slug}.
@freezed
class ProgramDetail with _$ProgramDetail {
  const factory ProgramDetail({
    required String slug,
    required String name,
    String? kind,
    String? category,
    String? family,
    String? summary,
    @JsonKey(name: 'apply_url') String? applyUrl,
    @Default([]) List<Map<String, dynamic>> documents,
    Jurisdiction? jurisdiction,
    String? agency,
    @JsonKey(name: 'version_label') String? versionLabel,
    @Default(<EligibilityRule>[]) List<EligibilityRule> rules,
    @JsonKey(name: 'data_gathered_from')
    @Default(<SourceLink>[])
    List<SourceLink> dataGatheredFrom,
    @JsonKey(name: 'how_to_get_benefit')
    @Default([])
    List<Map<String, dynamic>> howToGetBenefit,
    @Default(<SourceLink>[]) List<SourceLink> sources,
  }) = _ProgramDetail;

  factory ProgramDetail.fromJson(Map<String, dynamic> json) =>
      _$ProgramDetailFromJson(json);
}

@freezed
class EligibilityRule with _$EligibilityRule {
  const factory EligibilityRule({
    @JsonKey(name: 'question_key') required String questionKey,
    required String label,
    @JsonKey(name: 'expected_values')
    @Default(<dynamic>[])
    List<dynamic> expectedValues,
  }) = _EligibilityRule;

  factory EligibilityRule.fromJson(Map<String, dynamic> json) =>
      _$EligibilityRuleFromJson(json);
}

// Compact summary used by some UI views (mirrors Program but kept distinct
// for callers that want a name/slug-only handle).
@freezed
class ProgramSummary with _$ProgramSummary {
  const factory ProgramSummary({
    required String slug,
    required String name,
    String? summary,
  }) = _ProgramSummary;

  factory ProgramSummary.fromJson(Map<String, dynamic> json) =>
      _$ProgramSummaryFromJson(json);
}
