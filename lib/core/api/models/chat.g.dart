// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      role: json['role'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{'role': instance.role, 'content': instance.content};

_$ChatStreamRequestImpl _$$ChatStreamRequestImplFromJson(
  Map<String, dynamic> json,
) => _$ChatStreamRequestImpl(
  sessionId: json['session_id'] as String?,
  messages: (json['messages'] as List<dynamic>)
      .map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
      .toList(),
  contextMode: json['context_mode'] as String? ?? 'general',
  programSlug: json['program_slug'] as String?,
  model: json['model'] as String?,
);

Map<String, dynamic> _$$ChatStreamRequestImplToJson(
  _$ChatStreamRequestImpl instance,
) => <String, dynamic>{
  'session_id': instance.sessionId,
  'messages': instance.messages.map((e) => e.toJson()).toList(),
  'context_mode': instance.contextMode,
  'program_slug': instance.programSlug,
  'model': instance.model,
};

_$ChatToolCallImpl _$$ChatToolCallImplFromJson(Map<String, dynamic> json) =>
    _$ChatToolCallImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      args: json['args'] as Map<String, dynamic>? ?? const <String, dynamic>{},
      result: json['result'],
    );

Map<String, dynamic> _$$ChatToolCallImplToJson(_$ChatToolCallImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'args': instance.args,
      'result': instance.result,
    };
