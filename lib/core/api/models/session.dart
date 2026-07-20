// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';
part 'session.g.dart';

// POST /sessions — mirrors `app.schemas.SessionCreatePayload`.
@freezed
class SessionCreateRequest with _$SessionCreateRequest {
  const factory SessionCreateRequest({
    @Default('both') String scope,
    @JsonKey(name: 'state_code') String? stateCode,
    @Default(<String>[]) List<String> categories,
    @JsonKey(name: 'depth_mode') String? depthMode,
    @JsonKey(name: 'breadth_value') double? breadthValue,
    @JsonKey(name: 'depth_value') double? depthValue,
  }) = _SessionCreateRequest;

  factory SessionCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$SessionCreateRequestFromJson(json);
}

@freezed
class QuestionOption with _$QuestionOption {
  const factory QuestionOption({
    required String label,
    required dynamic value,
  }) = _QuestionOption;

  factory QuestionOption.fromJson(Map<String, dynamic> json) =>
      _$QuestionOptionFromJson(json);
}

// Question payload returned by `serialize_question` — matches
// `app.schemas.QuestionOut`.
@freezed
class QuestionOut with _$QuestionOut {
  const factory QuestionOut({
    required String key,
    required String prompt,
    String? hint,
    @JsonKey(name: 'input_type') required String inputType,
    @JsonKey(name: 'sensitivity_level') required String sensitivityLevel,
    List<QuestionOption>? options,
  }) = _QuestionOut;

  factory QuestionOut.fromJson(Map<String, dynamic> json) =>
      _$QuestionOutFromJson(json);
}

// Response shape from POST /sessions and POST /sessions/{id}/answers.
// note: TS stub had `current_question`, `answered_count`, `total_questions_estimate`,
// `categories[]`, `breadth`, `depth`. Wire shape is what's below.
@freezed
class SessionEnvelope with _$SessionEnvelope {
  const factory SessionEnvelope({
    @JsonKey(name: 'session_id') required String sessionId,
    @JsonKey(name: 'next_question') QuestionOut? nextQuestion,
    @JsonKey(name: 'provisional_result_count')
    @Default(0)
    int provisionalResultCount,
    @JsonKey(name: 'program_count') @Default(0) int programCount,
  }) = _SessionEnvelope;

  factory SessionEnvelope.fromJson(Map<String, dynamic> json) =>
      _$SessionEnvelopeFromJson(json);
}

// POST /sessions/{id}/answers payload — mirrors `app.schemas.AnswerPayload`.
@freezed
class SessionAnswersRequest with _$SessionAnswersRequest {
  const factory SessionAnswersRequest({
    @Default(<String, dynamic>{}) Map<String, dynamic> answers,
    @JsonKey(name: 'replace_answers') @Default(false) bool replaceAnswers,
  }) = _SessionAnswersRequest;

  factory SessionAnswersRequest.fromJson(Map<String, dynamic> json) =>
      _$SessionAnswersRequestFromJson(json);
}

// One evaluated program in a results bucket. The Python `evaluate_program`
// payload is wide and partly unstructured (per-program documents/sources are
// upstream-defined dicts), so we keep deeply nested JSON as Map<String,dynamic>
// rather than over-modelling.
@freezed
class ProgramResult with _$ProgramResult {
  const factory ProgramResult({
    @JsonKey(name: 'program_slug') required String programSlug,
    @JsonKey(name: 'program_name') required String programName,
    String? kind,
    String? category,
    String? family,
    @JsonKey(name: 'eligibility_status') required String eligibilityStatus,
    @JsonKey(name: 'decision_certainty') @Default(0) int decisionCertainty,
    @JsonKey(name: 'certainty_breakdown')
    @Default(<String, dynamic>{})
    Map<String, dynamic> certaintyBreakdown,
    @JsonKey(name: 'estimated_amount')
    @Default(<String, dynamic>{})
    Map<String, dynamic> estimatedAmount,
    String? summary,
    @Default(<String, dynamic>{}) Map<String, dynamic> jurisdiction,
    String? agency,
    @JsonKey(name: 'apply_url') String? applyUrl,
    @JsonKey(name: 'matched_reasons')
    @Default(<String>[])
    List<String> matchedReasons,
    @JsonKey(name: 'missing_facts')
    @Default(<String>[])
    List<String> missingFacts,
    @JsonKey(name: 'failed_reasons')
    @Default(<String>[])
    List<String> failedReasons,
    @Default([]) List<Map<String, dynamic>> documents,
    @JsonKey(name: 'data_gathered_from')
    @Default([])
    List<Map<String, dynamic>> dataGatheredFrom,
    @JsonKey(name: 'how_to_get_benefit')
    @Default([])
    List<Map<String, dynamic>> howToGetBenefit,
    @Default([]) List<Map<String, dynamic>> sources,
  }) = _ProgramResult;

  factory ProgramResult.fromJson(Map<String, dynamic> json) =>
      _$ProgramResultFromJson(json);
}

// GET /sessions/{id}/results — wire shape: `{session_id, federal_results, state_results}`.
// note: TS stub had `{ session_id, federal[], state[], scope }` — wrong shape.
@freezed
class SessionResults with _$SessionResults {
  const factory SessionResults({
    @JsonKey(name: 'session_id') required String sessionId,
    @JsonKey(name: 'federal_results')
    @Default(<ProgramResult>[])
    List<ProgramResult> federalResults,
    @JsonKey(name: 'state_results')
    @Default(<ProgramResult>[])
    List<ProgramResult> stateResults,
  }) = _SessionResults;

  factory SessionResults.fromJson(Map<String, dynamic> json) =>
      _$SessionResultsFromJson(json);
}

@freezed
class PlanOverview with _$PlanOverview {
  const factory PlanOverview({
    @JsonKey(name: 'likely_programs') @Default(0) int likelyPrograms,
    @JsonKey(name: 'possible_programs') @Default(0) int possiblePrograms,
    @JsonKey(name: 'likely_federal_programs')
    @Default(0)
    int likelyFederalPrograms,
    @JsonKey(name: 'likely_state_programs') @Default(0) int likelyStatePrograms,
    @JsonKey(name: 'average_rule_coverage') @Default(0) int averageRuleCoverage,
    @JsonKey(name: 'answered_questions') @Default(0) int answeredQuestions,
    @JsonKey(name: 'next_question_key') String? nextQuestionKey,
    @JsonKey(name: 'estimated_monthly_total')
    @Default(0)
    int estimatedMonthlyTotal,
  }) = _PlanOverview;

  factory PlanOverview.fromJson(Map<String, dynamic> json) =>
      _$PlanOverviewFromJson(json);
}

// GET /sessions/{id}/plan.
// note: TS stub used different field names (benefit_stack, missing_facts,
// actions, source_hub, documents, notes, metrics). Wire shape is below.
@freezed
class SessionPlan with _$SessionPlan {
  const factory SessionPlan({
    @Default(<String, dynamic>{}) Map<String, dynamic> profile,
    required PlanOverview overview,
    @JsonKey(name: 'benefit_stack')
    @Default([])
    List<Map<String, dynamic>> benefitStack,
    @JsonKey(name: 'top_missing_facts')
    @Default([])
    List<Map<String, dynamic>> topMissingFacts,
    @JsonKey(name: 'action_plan')
    @Default([])
    List<Map<String, dynamic>> actionPlan,
    @JsonKey(name: 'official_source_hub')
    @Default([])
    List<Map<String, dynamic>> officialSourceHub,
    @JsonKey(name: 'planning_notes')
    @Default(<String>[])
    List<String> planningNotes,
    @JsonKey(name: 'document_checklist')
    @Default([])
    List<Map<String, dynamic>> documentChecklist,
  }) = _SessionPlan;

  factory SessionPlan.fromJson(Map<String, dynamic> json) =>
      _$SessionPlanFromJson(json);
}

// POST /sessions/{id}/compare — `app.schemas.CompareScenarioInput`.
@freezed
class CompareScenarioInput with _$CompareScenarioInput {
  const factory CompareScenarioInput({
    required String name,
    String? description,
    @Default(<String, dynamic>{}) Map<String, dynamic> answers,
  }) = _CompareScenarioInput;

  factory CompareScenarioInput.fromJson(Map<String, dynamic> json) =>
      _$CompareScenarioInputFromJson(json);
}

@freezed
class CompareRequest with _$CompareRequest {
  const factory CompareRequest({
    @Default(<CompareScenarioInput>[]) List<CompareScenarioInput> scenarios,
  }) = _CompareRequest;

  factory CompareRequest.fromJson(Map<String, dynamic> json) =>
      _$CompareRequestFromJson(json);
}

@freezed
class ScenarioComparison with _$ScenarioComparison {
  const factory ScenarioComparison({
    required String name,
    String? description,
    @JsonKey(name: 'answer_overrides')
    @Default(<String, dynamic>{})
    Map<String, dynamic> answerOverrides,
    @Default(<String, dynamic>{}) Map<String, dynamic> summary,
    @JsonKey(name: 'gained_programs')
    @Default([])
    List<Map<String, dynamic>> gainedPrograms,
    @JsonKey(name: 'improved_programs')
    @Default([])
    List<Map<String, dynamic>> improvedPrograms,
    @JsonKey(name: 'lost_programs')
    @Default([])
    List<Map<String, dynamic>> lostPrograms,
  }) = _ScenarioComparison;

  factory ScenarioComparison.fromJson(Map<String, dynamic> json) =>
      _$ScenarioComparisonFromJson(json);
}

// note: TS stub modeled this as a flat `CompareResult` — Python returns
// `{ session_id, baseline: {overview}, comparisons: [...] }`.
@freezed
class SessionCompare with _$SessionCompare {
  const factory SessionCompare({
    @JsonKey(name: 'session_id') required String sessionId,
    @Default(<String, dynamic>{}) Map<String, dynamic> baseline,
    @Default(<ScenarioComparison>[]) List<ScenarioComparison> comparisons,
  }) = _SessionCompare;

  factory SessionCompare.fromJson(Map<String, dynamic> json) =>
      _$SessionCompareFromJson(json);
}
