// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'intake.freezed.dart';
part 'intake.g.dart';

// Single message in an intake conversation — used by /intake/probe.
@freezed
class IntakeMessage with _$IntakeMessage {
  const factory IntakeMessage({
    required String role,
    required String content,
  }) = _IntakeMessage;

  factory IntakeMessage.fromJson(Map<String, dynamic> json) =>
      _$IntakeMessageFromJson(json);
}

// POST /intake/interpret — mirrors `app.schemas.IntakeInterpretPayload`.
@freezed
class IntakeInterpretRequest with _$IntakeInterpretRequest {
  const factory IntakeInterpretRequest({
    @Default('') String description,
    String? scope,
    @JsonKey(name: 'state_code') String? stateCode,
    @Default(<String>[]) List<String> categories,
    @JsonKey(name: 'current_facts')
    @Default(<String, dynamic>{})
    Map<String, dynamic> currentFacts,
    @JsonKey(name: 'use_llm') @Default(true) bool useLlm,
  }) = _IntakeInterpretRequest;

  factory IntakeInterpretRequest.fromJson(Map<String, dynamic> json) =>
      _$IntakeInterpretRequestFromJson(json);
}

// POST /intake/probe — mirrors `app.schemas.IntakeProbePayload`.
@freezed
class IntakeProbeRequest with _$IntakeProbeRequest {
  const factory IntakeProbeRequest({
    @Default('') String description,
    String? scope,
    @JsonKey(name: 'state_code') String? stateCode,
    @Default(<String>[]) List<String> categories,
    @JsonKey(name: 'current_facts')
    @Default(<String, dynamic>{})
    Map<String, dynamic> currentFacts,
    @Default(<IntakeMessage>[]) List<IntakeMessage> messages,
    @JsonKey(name: 'pending_question_key') String? pendingQuestionKey,
    @JsonKey(name: 'use_llm') @Default(true) bool useLlm,
  }) = _IntakeProbeRequest;

  factory IntakeProbeRequest.fromJson(Map<String, dynamic> json) =>
      _$IntakeProbeRequestFromJson(json);
}

@freezed
class IntakeFactChip with _$IntakeFactChip {
  const factory IntakeFactChip({
    required String key,
    required String label,
    String? value,
  }) = _IntakeFactChip;

  factory IntakeFactChip.fromJson(Map<String, dynamic> json) =>
      _$IntakeFactChipFromJson(json);
}

@freezed
class IntakeCategorySuggestion with _$IntakeCategorySuggestion {
  const factory IntakeCategorySuggestion({
    required String key,
    required String label,
  }) = _IntakeCategorySuggestion;

  factory IntakeCategorySuggestion.fromJson(Map<String, dynamic> json) =>
      _$IntakeCategorySuggestionFromJson(json);
}

@freezed
class IntakeProbeQuestion with _$IntakeProbeQuestion {
  const factory IntakeProbeQuestion({
    required String key,
    required String prompt,
    String? hint,
    @JsonKey(name: 'question_type') String? questionType,
    @JsonKey(name: 'input_type') String? inputType,
    @Default(<Map<String, dynamic>>[])
    List<Map<String, dynamic>> options,
  }) = _IntakeProbeQuestion;

  factory IntakeProbeQuestion.fromJson(Map<String, dynamic> json) =>
      _$IntakeProbeQuestionFromJson(json);
}

@freezed
class IntakeNavigationAction with _$IntakeNavigationAction {
  const factory IntakeNavigationAction({
    required String key,
    required String label,
    String? description,
    String? url,
  }) = _IntakeNavigationAction;

  factory IntakeNavigationAction.fromJson(Map<String, dynamic> json) =>
      _$IntakeNavigationActionFromJson(json);
}

// Response shared by /intake/interpret and /intake/probe.
// note: TS stub split this into IntakeInterpretResponse and ProbeResult, but
// the live API returns the same shape from both endpoints.
@freezed
class IntakeResponse with _$IntakeResponse {
  const factory IntakeResponse({
    @Default('') String summary,
    @JsonKey(name: 'chat_reply') String? chatReply,
    @JsonKey(name: 'suggested_scope') String? suggestedScope,
    @JsonKey(name: 'applied_state_code') String? appliedStateCode,
    @JsonKey(name: 'suggested_categories')
    @Default(<IntakeCategorySuggestion>[])
    List<IntakeCategorySuggestion> suggestedCategories,
    @JsonKey(name: 'structured_facts')
    @Default(<IntakeFactChip>[])
    List<IntakeFactChip> structuredFacts,
    @JsonKey(name: 'current_facts')
    @Default(<String, dynamic>{})
    Map<String, dynamic> currentFacts,
    @JsonKey(name: 'prefill_answers')
    @Default(<String, dynamic>{})
    Map<String, dynamic> prefillAnswers,
    @JsonKey(name: 'follow_up_questions')
    @Default(<IntakeProbeQuestion>[])
    List<IntakeProbeQuestion> followUpQuestions,
    @JsonKey(name: 'next_probe') IntakeProbeQuestion? nextProbe,
    @JsonKey(name: 'navigation_actions')
    @Default(<IntakeNavigationAction>[])
    List<IntakeNavigationAction> navigationActions,
    @JsonKey(name: 'interpretation_method') String? interpretationMethod,
    @JsonKey(name: 'llm_used') @Default(false) bool llmUsed,
    @JsonKey(name: 'assistant_method') String? assistantMethod,
  }) = _IntakeResponse;

  factory IntakeResponse.fromJson(Map<String, dynamic> json) =>
      _$IntakeResponseFromJson(json);
}
