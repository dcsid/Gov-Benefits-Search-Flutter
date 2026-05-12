// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LlmCompleteRequestImpl _$$LlmCompleteRequestImplFromJson(
  Map<String, dynamic> json,
) => _$LlmCompleteRequestImpl(
  messages:
      (json['messages'] as List<dynamic>?)
          ?.map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ChatMessage>[],
  model: json['model'] as String?,
  jsonMode: json['json_mode'] as bool? ?? false,
  prompt: json['prompt'] as String?,
  promptVars: json['prompt_vars'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$LlmCompleteRequestImplToJson(
  _$LlmCompleteRequestImpl instance,
) => <String, dynamic>{
  'messages': instance.messages.map((e) => e.toJson()).toList(),
  'model': instance.model,
  'json_mode': instance.jsonMode,
  'prompt': instance.prompt,
  'prompt_vars': instance.promptVars,
};

_$LlmCompleteResponseImpl _$$LlmCompleteResponseImplFromJson(
  Map<String, dynamic> json,
) => _$LlmCompleteResponseImpl(
  content: json['content'] as String,
  model: json['model'] as String,
  promptName: json['prompt_name'] as String?,
  finishReason: json['finish_reason'] as String?,
  usage: json['usage'] as Map<String, dynamic>? ?? const <String, dynamic>{},
  latencyMs: (json['latency_ms'] as num?)?.toInt(),
  fallbackUsed: json['fallback_used'] as bool? ?? false,
);

Map<String, dynamic> _$$LlmCompleteResponseImplToJson(
  _$LlmCompleteResponseImpl instance,
) => <String, dynamic>{
  'content': instance.content,
  'model': instance.model,
  'prompt_name': instance.promptName,
  'finish_reason': instance.finishReason,
  'usage': instance.usage,
  'latency_ms': instance.latencyMs,
  'fallback_used': instance.fallbackUsed,
};
