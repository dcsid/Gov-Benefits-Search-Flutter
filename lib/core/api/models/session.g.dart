// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionCreateRequestImpl _$$SessionCreateRequestImplFromJson(
  Map<String, dynamic> json,
) => _$SessionCreateRequestImpl(
  scope: json['scope'] as String? ?? 'both',
  stateCode: json['state_code'] as String?,
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  depthMode: json['depth_mode'] as String?,
  breadthValue: (json['breadth_value'] as num?)?.toDouble(),
  depthValue: (json['depth_value'] as num?)?.toDouble(),
);

Map<String, dynamic> _$$SessionCreateRequestImplToJson(
  _$SessionCreateRequestImpl instance,
) => <String, dynamic>{
  'scope': instance.scope,
  'state_code': instance.stateCode,
  'categories': instance.categories,
  'depth_mode': instance.depthMode,
  'breadth_value': instance.breadthValue,
  'depth_value': instance.depthValue,
};

_$QuestionOptionImpl _$$QuestionOptionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionOptionImpl(label: json['label'] as String, value: json['value']);

Map<String, dynamic> _$$QuestionOptionImplToJson(
  _$QuestionOptionImpl instance,
) => <String, dynamic>{'label': instance.label, 'value': instance.value};

_$QuestionOutImpl _$$QuestionOutImplFromJson(Map<String, dynamic> json) =>
    _$QuestionOutImpl(
      key: json['key'] as String,
      prompt: json['prompt'] as String,
      hint: json['hint'] as String?,
      inputType: json['input_type'] as String,
      sensitivityLevel: json['sensitivity_level'] as String,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => QuestionOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionOutImplToJson(_$QuestionOutImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'prompt': instance.prompt,
      'hint': instance.hint,
      'input_type': instance.inputType,
      'sensitivity_level': instance.sensitivityLevel,
      'options': instance.options?.map((e) => e.toJson()).toList(),
    };

_$SessionEnvelopeImpl _$$SessionEnvelopeImplFromJson(
  Map<String, dynamic> json,
) => _$SessionEnvelopeImpl(
  sessionId: json['session_id'] as String,
  nextQuestion: json['next_question'] == null
      ? null
      : QuestionOut.fromJson(json['next_question'] as Map<String, dynamic>),
  provisionalResultCount:
      (json['provisional_result_count'] as num?)?.toInt() ?? 0,
  programCount: (json['program_count'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$SessionEnvelopeImplToJson(
  _$SessionEnvelopeImpl instance,
) => <String, dynamic>{
  'session_id': instance.sessionId,
  'next_question': instance.nextQuestion?.toJson(),
  'provisional_result_count': instance.provisionalResultCount,
  'program_count': instance.programCount,
};

_$SessionAnswersRequestImpl _$$SessionAnswersRequestImplFromJson(
  Map<String, dynamic> json,
) => _$SessionAnswersRequestImpl(
  answers:
      json['answers'] as Map<String, dynamic>? ?? const <String, dynamic>{},
  replaceAnswers: json['replace_answers'] as bool? ?? false,
);

Map<String, dynamic> _$$SessionAnswersRequestImplToJson(
  _$SessionAnswersRequestImpl instance,
) => <String, dynamic>{
  'answers': instance.answers,
  'replace_answers': instance.replaceAnswers,
};

_$ProgramResultImpl _$$ProgramResultImplFromJson(Map<String, dynamic> json) =>
    _$ProgramResultImpl(
      programSlug: json['program_slug'] as String,
      programName: json['program_name'] as String,
      kind: json['kind'] as String?,
      category: json['category'] as String?,
      family: json['family'] as String?,
      eligibilityStatus: json['eligibility_status'] as String,
      decisionCertainty: (json['decision_certainty'] as num?)?.toInt() ?? 0,
      certaintyBreakdown:
          json['certainty_breakdown'] as Map<String, dynamic>? ??
          const <String, dynamic>{},
      estimatedAmount:
          json['estimated_amount'] as Map<String, dynamic>? ??
          const <String, dynamic>{},
      summary: json['summary'] as String?,
      jurisdiction:
          json['jurisdiction'] as Map<String, dynamic>? ??
          const <String, dynamic>{},
      agency: json['agency'] as String?,
      applyUrl: json['apply_url'] as String?,
      matchedReasons:
          (json['matched_reasons'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      missingFacts:
          (json['missing_facts'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      failedReasons:
          (json['failed_reasons'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      documents:
          (json['documents'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const <Map<String, dynamic>>[],
      dataGatheredFrom:
          (json['data_gathered_from'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const <Map<String, dynamic>>[],
      howToGetBenefit:
          (json['how_to_get_benefit'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const <Map<String, dynamic>>[],
      sources:
          (json['sources'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const <Map<String, dynamic>>[],
    );

Map<String, dynamic> _$$ProgramResultImplToJson(_$ProgramResultImpl instance) =>
    <String, dynamic>{
      'program_slug': instance.programSlug,
      'program_name': instance.programName,
      'kind': instance.kind,
      'category': instance.category,
      'family': instance.family,
      'eligibility_status': instance.eligibilityStatus,
      'decision_certainty': instance.decisionCertainty,
      'certainty_breakdown': instance.certaintyBreakdown,
      'estimated_amount': instance.estimatedAmount,
      'summary': instance.summary,
      'jurisdiction': instance.jurisdiction,
      'agency': instance.agency,
      'apply_url': instance.applyUrl,
      'matched_reasons': instance.matchedReasons,
      'missing_facts': instance.missingFacts,
      'failed_reasons': instance.failedReasons,
      'documents': instance.documents,
      'data_gathered_from': instance.dataGatheredFrom,
      'how_to_get_benefit': instance.howToGetBenefit,
      'sources': instance.sources,
    };

_$SessionResultsImpl _$$SessionResultsImplFromJson(Map<String, dynamic> json) =>
    _$SessionResultsImpl(
      sessionId: json['session_id'] as String,
      federalResults:
          (json['federal_results'] as List<dynamic>?)
              ?.map((e) => ProgramResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProgramResult>[],
      stateResults:
          (json['state_results'] as List<dynamic>?)
              ?.map((e) => ProgramResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProgramResult>[],
    );

Map<String, dynamic> _$$SessionResultsImplToJson(
  _$SessionResultsImpl instance,
) => <String, dynamic>{
  'session_id': instance.sessionId,
  'federal_results': instance.federalResults.map((e) => e.toJson()).toList(),
  'state_results': instance.stateResults.map((e) => e.toJson()).toList(),
};

_$PlanOverviewImpl _$$PlanOverviewImplFromJson(
  Map<String, dynamic> json,
) => _$PlanOverviewImpl(
  likelyPrograms: (json['likely_programs'] as num?)?.toInt() ?? 0,
  possiblePrograms: (json['possible_programs'] as num?)?.toInt() ?? 0,
  likelyFederalPrograms:
      (json['likely_federal_programs'] as num?)?.toInt() ?? 0,
  likelyStatePrograms: (json['likely_state_programs'] as num?)?.toInt() ?? 0,
  averageRuleCoverage: (json['average_rule_coverage'] as num?)?.toInt() ?? 0,
  answeredQuestions: (json['answered_questions'] as num?)?.toInt() ?? 0,
  nextQuestionKey: json['next_question_key'] as String?,
  estimatedMonthlyTotal:
      (json['estimated_monthly_total'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$PlanOverviewImplToJson(_$PlanOverviewImpl instance) =>
    <String, dynamic>{
      'likely_programs': instance.likelyPrograms,
      'possible_programs': instance.possiblePrograms,
      'likely_federal_programs': instance.likelyFederalPrograms,
      'likely_state_programs': instance.likelyStatePrograms,
      'average_rule_coverage': instance.averageRuleCoverage,
      'answered_questions': instance.answeredQuestions,
      'next_question_key': instance.nextQuestionKey,
      'estimated_monthly_total': instance.estimatedMonthlyTotal,
    };

_$SessionPlanImpl _$$SessionPlanImplFromJson(Map<String, dynamic> json) =>
    _$SessionPlanImpl(
      profile:
          json['profile'] as Map<String, dynamic>? ?? const <String, dynamic>{},
      overview: PlanOverview.fromJson(json['overview'] as Map<String, dynamic>),
      benefitStack:
          (json['benefit_stack'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const <Map<String, dynamic>>[],
      topMissingFacts:
          (json['top_missing_facts'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const <Map<String, dynamic>>[],
      actionPlan:
          (json['action_plan'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const <Map<String, dynamic>>[],
      officialSourceHub:
          (json['official_source_hub'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const <Map<String, dynamic>>[],
      planningNotes:
          (json['planning_notes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      documentChecklist:
          (json['document_checklist'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const <Map<String, dynamic>>[],
    );

Map<String, dynamic> _$$SessionPlanImplToJson(_$SessionPlanImpl instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'overview': instance.overview.toJson(),
      'benefit_stack': instance.benefitStack,
      'top_missing_facts': instance.topMissingFacts,
      'action_plan': instance.actionPlan,
      'official_source_hub': instance.officialSourceHub,
      'planning_notes': instance.planningNotes,
      'document_checklist': instance.documentChecklist,
    };

_$CompareScenarioInputImpl _$$CompareScenarioInputImplFromJson(
  Map<String, dynamic> json,
) => _$CompareScenarioInputImpl(
  name: json['name'] as String,
  description: json['description'] as String?,
  answers:
      json['answers'] as Map<String, dynamic>? ?? const <String, dynamic>{},
);

Map<String, dynamic> _$$CompareScenarioInputImplToJson(
  _$CompareScenarioInputImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'answers': instance.answers,
};

_$CompareRequestImpl _$$CompareRequestImplFromJson(Map<String, dynamic> json) =>
    _$CompareRequestImpl(
      scenarios:
          (json['scenarios'] as List<dynamic>?)
              ?.map(
                (e) => CompareScenarioInput.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <CompareScenarioInput>[],
    );

Map<String, dynamic> _$$CompareRequestImplToJson(
  _$CompareRequestImpl instance,
) => <String, dynamic>{
  'scenarios': instance.scenarios.map((e) => e.toJson()).toList(),
};

_$ScenarioComparisonImpl _$$ScenarioComparisonImplFromJson(
  Map<String, dynamic> json,
) => _$ScenarioComparisonImpl(
  name: json['name'] as String,
  description: json['description'] as String?,
  answerOverrides:
      json['answer_overrides'] as Map<String, dynamic>? ??
      const <String, dynamic>{},
  summary:
      json['summary'] as Map<String, dynamic>? ?? const <String, dynamic>{},
  gainedPrograms:
      (json['gained_programs'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList() ??
      const <Map<String, dynamic>>[],
  improvedPrograms:
      (json['improved_programs'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList() ??
      const <Map<String, dynamic>>[],
  lostPrograms:
      (json['lost_programs'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList() ??
      const <Map<String, dynamic>>[],
);

Map<String, dynamic> _$$ScenarioComparisonImplToJson(
  _$ScenarioComparisonImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'answer_overrides': instance.answerOverrides,
  'summary': instance.summary,
  'gained_programs': instance.gainedPrograms,
  'improved_programs': instance.improvedPrograms,
  'lost_programs': instance.lostPrograms,
};

_$SessionCompareImpl _$$SessionCompareImplFromJson(
  Map<String, dynamic> json,
) => _$SessionCompareImpl(
  sessionId: json['session_id'] as String,
  baseline:
      json['baseline'] as Map<String, dynamic>? ?? const <String, dynamic>{},
  comparisons:
      (json['comparisons'] as List<dynamic>?)
          ?.map((e) => ScenarioComparison.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ScenarioComparison>[],
);

Map<String, dynamic> _$$SessionCompareImplToJson(
  _$SessionCompareImpl instance,
) => <String, dynamic>{
  'session_id': instance.sessionId,
  'baseline': instance.baseline,
  'comparisons': instance.comparisons.map((e) => e.toJson()).toList(),
};
