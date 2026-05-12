// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'program.dart';

part 'explorer.freezed.dart';
part 'explorer.g.dart';

// POST /explorer/search request body — mirrors `app.schemas.ExplorerSearchPayload`.
@freezed
class ExplorerSearchRequest with _$ExplorerSearchRequest {
  const factory ExplorerSearchRequest({
    @Default('') String query,
    @Default('') String description,
    @Default('both') String scope,
    @JsonKey(name: 'state_code') String? stateCode,
    @Default(<String>[]) List<String> categories,
    @Default(20) int limit,
    @JsonKey(name: 'use_llm') @Default(true) bool useLlm,
  }) = _ExplorerSearchRequest;

  factory ExplorerSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$ExplorerSearchRequestFromJson(json);
}

// note: Python returns `{ mode, interpretation, programs }` — the TS stub
// modeled this as `{ interpretation?, matches[] }` (different field names and
// shapes). We follow the wire format.
@freezed
class ExplorerSearchResponse with _$ExplorerSearchResponse {
  const factory ExplorerSearchResponse({
    required String mode,
    @Default(<String, dynamic>{}) Map<String, dynamic> interpretation,
    @Default(<ExplorerHit>[]) List<ExplorerHit> programs,
  }) = _ExplorerSearchResponse;

  factory ExplorerSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$ExplorerSearchResponseFromJson(json);
}

// One scored hit in an explorer search payload.
@freezed
class ExplorerHit with _$ExplorerHit {
  const factory ExplorerHit({
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
    @JsonKey(name: 'match_reasons')
    @Default(<String>[])
    List<String> matchReasons,
    @JsonKey(name: 'search_score') @Default(0) int searchScore,
  }) = _ExplorerHit;

  factory ExplorerHit.fromJson(Map<String, dynamic> json) =>
      _$ExplorerHitFromJson(json);
}
