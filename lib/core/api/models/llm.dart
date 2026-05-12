// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'chat.dart';

part 'llm.freezed.dart';
part 'llm.g.dart';

// POST /llm/complete — mirrors `app.routers.chat.LLMCompletePayload`.
// note: TS stub omitted `prompt`/`prompt_vars`; Python supports either a free
// `messages[]` list or a registry `prompt` name.
@freezed
class LlmCompleteRequest with _$LlmCompleteRequest {
  const factory LlmCompleteRequest({
    @Default(<ChatMessage>[]) List<ChatMessage> messages,
    String? model,
    @JsonKey(name: 'json_mode') @Default(false) bool jsonMode,
    String? prompt,
    @JsonKey(name: 'prompt_vars') Map<String, dynamic>? promptVars,
  }) = _LlmCompleteRequest;

  factory LlmCompleteRequest.fromJson(Map<String, dynamic> json) =>
      _$LlmCompleteRequestFromJson(json);
}

@freezed
class LlmCompleteResponse with _$LlmCompleteResponse {
  const factory LlmCompleteResponse({
    required String content,
    required String model,
    @JsonKey(name: 'prompt_name') String? promptName,
    @JsonKey(name: 'finish_reason') String? finishReason,
    @Default(<String, dynamic>{}) Map<String, dynamic> usage,
    @JsonKey(name: 'latency_ms') int? latencyMs,
    @JsonKey(name: 'fallback_used') @Default(false) bool fallbackUsed,
  }) = _LlmCompleteResponse;

  factory LlmCompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$LlmCompleteResponseFromJson(json);
}
