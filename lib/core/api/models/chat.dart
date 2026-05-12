// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required String role,
    required String content,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}

// POST /chat/stream request body.
@freezed
class ChatStreamRequest with _$ChatStreamRequest {
  const factory ChatStreamRequest({
    @JsonKey(name: 'session_id') String? sessionId,
    required List<ChatMessage> messages,
    @JsonKey(name: 'context_mode') @Default('general') String contextMode,
    @JsonKey(name: 'program_slug') String? programSlug,
    String? model,
  }) = _ChatStreamRequest;

  factory ChatStreamRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatStreamRequestFromJson(json);
}

@freezed
class ChatToolCall with _$ChatToolCall {
  const factory ChatToolCall({
    required String id,
    required String name,
    @Default(<String, dynamic>{}) Map<String, dynamic> args,
    Object? result,
  }) = _ChatToolCall;

  factory ChatToolCall.fromJson(Map<String, dynamic> json) =>
      _$ChatToolCallFromJson(json);
}

// Sealed union of events emitted by the SSE chat stream.
@freezed
sealed class ChatStreamEvent with _$ChatStreamEvent {
  const factory ChatStreamEvent.token(String delta) = ChatStreamTokenEvent;
  const factory ChatStreamEvent.toolCall({
    required String id,
    required String name,
    @Default(<String, dynamic>{}) Map<String, dynamic> args,
  }) = ChatStreamToolCallEvent;
  const factory ChatStreamEvent.toolResult({
    required String id,
    Object? result,
  }) = ChatStreamToolResultEvent;
  const factory ChatStreamEvent.citation({
    required int index,
    required String title,
    required String url,
  }) = ChatStreamCitationEvent;
  const factory ChatStreamEvent.done({
    String? finishReason,
    Map<String, dynamic>? usage,
    String? model,
    bool? fallbackUsed,
  }) = ChatStreamDoneEvent;
  const factory ChatStreamEvent.error({
    required String message,
    String? code,
  }) = ChatStreamErrorEvent;
}
