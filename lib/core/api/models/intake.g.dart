// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intake.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IntakeMessageImpl _$$IntakeMessageImplFromJson(Map<String, dynamic> json) =>
    _$IntakeMessageImpl(
      role: json['role'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$IntakeMessageImplToJson(_$IntakeMessageImpl instance) =>
    <String, dynamic>{'role': instance.role, 'content': instance.content};

_$IntakeInterpretRequestImpl _$$IntakeInterpretRequestImplFromJson(
  Map<String, dynamic> json,
) => _$IntakeInterpretRequestImpl(
  description: json['description'] as String? ?? '',
  scope: json['scope'] as String?,
  stateCode: json['state_code'] as String?,
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  currentFacts:
      json['current_facts'] as Map<String, dynamic>? ??
      const <String, dynamic>{},
  useLlm: json['use_llm'] as bool? ?? true,
);

Map<String, dynamic> _$$IntakeInterpretRequestImplToJson(
  _$IntakeInterpretRequestImpl instance,
) => <String, dynamic>{
  'description': instance.description,
  'scope': instance.scope,
  'state_code': instance.stateCode,
  'categories': instance.categories,
  'current_facts': instance.currentFacts,
  'use_llm': instance.useLlm,
};

_$IntakeProbeRequestImpl _$$IntakeProbeRequestImplFromJson(
  Map<String, dynamic> json,
) => _$IntakeProbeRequestImpl(
  description: json['description'] as String? ?? '',
  scope: json['scope'] as String?,
  stateCode: json['state_code'] as String?,
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  currentFacts:
      json['current_facts'] as Map<String, dynamic>? ??
      const <String, dynamic>{},
  messages:
      (json['messages'] as List<dynamic>?)
          ?.map((e) => IntakeMessage.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <IntakeMessage>[],
  pendingQuestionKey: json['pending_question_key'] as String?,
  useLlm: json['use_llm'] as bool? ?? true,
);

Map<String, dynamic> _$$IntakeProbeRequestImplToJson(
  _$IntakeProbeRequestImpl instance,
) => <String, dynamic>{
  'description': instance.description,
  'scope': instance.scope,
  'state_code': instance.stateCode,
  'categories': instance.categories,
  'current_facts': instance.currentFacts,
  'messages': instance.messages.map((e) => e.toJson()).toList(),
  'pending_question_key': instance.pendingQuestionKey,
  'use_llm': instance.useLlm,
};

_$IntakeFactChipImpl _$$IntakeFactChipImplFromJson(Map<String, dynamic> json) =>
    _$IntakeFactChipImpl(
      key: json['key'] as String,
      label: json['label'] as String,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$IntakeFactChipImplToJson(
  _$IntakeFactChipImpl instance,
) => <String, dynamic>{
  'key': instance.key,
  'label': instance.label,
  'value': instance.value,
};

_$IntakeCategorySuggestionImpl _$$IntakeCategorySuggestionImplFromJson(
  Map<String, dynamic> json,
) => _$IntakeCategorySuggestionImpl(
  key: json['key'] as String,
  label: json['label'] as String,
);

Map<String, dynamic> _$$IntakeCategorySuggestionImplToJson(
  _$IntakeCategorySuggestionImpl instance,
) => <String, dynamic>{'key': instance.key, 'label': instance.label};

_$IntakeProbeQuestionImpl _$$IntakeProbeQuestionImplFromJson(
  Map<String, dynamic> json,
) => _$IntakeProbeQuestionImpl(
  key: json['key'] as String,
  prompt: json['prompt'] as String,
  hint: json['hint'] as String?,
  questionType: json['question_type'] as String?,
  inputType: json['input_type'] as String?,
  options:
      (json['options'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList() ??
      const <Map<String, dynamic>>[],
);

Map<String, dynamic> _$$IntakeProbeQuestionImplToJson(
  _$IntakeProbeQuestionImpl instance,
) => <String, dynamic>{
  'key': instance.key,
  'prompt': instance.prompt,
  'hint': instance.hint,
  'question_type': instance.questionType,
  'input_type': instance.inputType,
  'options': instance.options,
};

_$IntakeNavigationActionImpl _$$IntakeNavigationActionImplFromJson(
  Map<String, dynamic> json,
) => _$IntakeNavigationActionImpl(
  key: json['key'] as String,
  label: json['label'] as String,
  description: json['description'] as String?,
  url: json['url'] as String?,
);

Map<String, dynamic> _$$IntakeNavigationActionImplToJson(
  _$IntakeNavigationActionImpl instance,
) => <String, dynamic>{
  'key': instance.key,
  'label': instance.label,
  'description': instance.description,
  'url': instance.url,
};

_$IntakeResponseImpl _$$IntakeResponseImplFromJson(
  Map<String, dynamic> json,
) => _$IntakeResponseImpl(
  summary: json['summary'] as String? ?? '',
  chatReply: json['chat_reply'] as String?,
  suggestedScope: json['suggested_scope'] as String?,
  appliedStateCode: json['applied_state_code'] as String?,
  suggestedCategories:
      (json['suggested_categories'] as List<dynamic>?)
          ?.map(
            (e) => IntakeCategorySuggestion.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <IntakeCategorySuggestion>[],
  structuredFacts:
      (json['structured_facts'] as List<dynamic>?)
          ?.map((e) => IntakeFactChip.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <IntakeFactChip>[],
  currentFacts:
      json['current_facts'] as Map<String, dynamic>? ??
      const <String, dynamic>{},
  prefillAnswers:
      json['prefill_answers'] as Map<String, dynamic>? ??
      const <String, dynamic>{},
  followUpQuestions:
      (json['follow_up_questions'] as List<dynamic>?)
          ?.map((e) => IntakeProbeQuestion.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <IntakeProbeQuestion>[],
  nextProbe: json['next_probe'] == null
      ? null
      : IntakeProbeQuestion.fromJson(
          json['next_probe'] as Map<String, dynamic>,
        ),
  navigationActions:
      (json['navigation_actions'] as List<dynamic>?)
          ?.map(
            (e) => IntakeNavigationAction.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <IntakeNavigationAction>[],
  interpretationMethod: json['interpretation_method'] as String?,
  llmUsed: json['llm_used'] as bool? ?? false,
  assistantMethod: json['assistant_method'] as String?,
);

Map<String, dynamic> _$$IntakeResponseImplToJson(
  _$IntakeResponseImpl instance,
) => <String, dynamic>{
  'summary': instance.summary,
  'chat_reply': instance.chatReply,
  'suggested_scope': instance.suggestedScope,
  'applied_state_code': instance.appliedStateCode,
  'suggested_categories': instance.suggestedCategories
      .map((e) => e.toJson())
      .toList(),
  'structured_facts': instance.structuredFacts.map((e) => e.toJson()).toList(),
  'current_facts': instance.currentFacts,
  'prefill_answers': instance.prefillAnswers,
  'follow_up_questions': instance.followUpQuestions
      .map((e) => e.toJson())
      .toList(),
  'next_probe': instance.nextProbe?.toJson(),
  'navigation_actions': instance.navigationActions
      .map((e) => e.toJson())
      .toList(),
  'interpretation_method': instance.interpretationMethod,
  'llm_used': instance.llmUsed,
  'assistant_method': instance.assistantMethod,
};
