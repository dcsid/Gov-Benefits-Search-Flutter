// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'llm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LlmCompleteRequest _$LlmCompleteRequestFromJson(Map<String, dynamic> json) {
  return _LlmCompleteRequest.fromJson(json);
}

/// @nodoc
mixin _$LlmCompleteRequest {
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  @JsonKey(name: 'json_mode')
  bool get jsonMode => throw _privateConstructorUsedError;
  String? get prompt => throw _privateConstructorUsedError;
  @JsonKey(name: 'prompt_vars')
  Map<String, dynamic>? get promptVars => throw _privateConstructorUsedError;

  /// Serializes this LlmCompleteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LlmCompleteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LlmCompleteRequestCopyWith<LlmCompleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LlmCompleteRequestCopyWith<$Res> {
  factory $LlmCompleteRequestCopyWith(
    LlmCompleteRequest value,
    $Res Function(LlmCompleteRequest) then,
  ) = _$LlmCompleteRequestCopyWithImpl<$Res, LlmCompleteRequest>;
  @useResult
  $Res call({
    List<ChatMessage> messages,
    String? model,
    @JsonKey(name: 'json_mode') bool jsonMode,
    String? prompt,
    @JsonKey(name: 'prompt_vars') Map<String, dynamic>? promptVars,
  });
}

/// @nodoc
class _$LlmCompleteRequestCopyWithImpl<$Res, $Val extends LlmCompleteRequest>
    implements $LlmCompleteRequestCopyWith<$Res> {
  _$LlmCompleteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LlmCompleteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? model = freezed,
    Object? jsonMode = null,
    Object? prompt = freezed,
    Object? promptVars = freezed,
  }) {
    return _then(
      _value.copyWith(
            messages: null == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as List<ChatMessage>,
            model: freezed == model
                ? _value.model
                : model // ignore: cast_nullable_to_non_nullable
                      as String?,
            jsonMode: null == jsonMode
                ? _value.jsonMode
                : jsonMode // ignore: cast_nullable_to_non_nullable
                      as bool,
            prompt: freezed == prompt
                ? _value.prompt
                : prompt // ignore: cast_nullable_to_non_nullable
                      as String?,
            promptVars: freezed == promptVars
                ? _value.promptVars
                : promptVars // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LlmCompleteRequestImplCopyWith<$Res>
    implements $LlmCompleteRequestCopyWith<$Res> {
  factory _$$LlmCompleteRequestImplCopyWith(
    _$LlmCompleteRequestImpl value,
    $Res Function(_$LlmCompleteRequestImpl) then,
  ) = __$$LlmCompleteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ChatMessage> messages,
    String? model,
    @JsonKey(name: 'json_mode') bool jsonMode,
    String? prompt,
    @JsonKey(name: 'prompt_vars') Map<String, dynamic>? promptVars,
  });
}

/// @nodoc
class __$$LlmCompleteRequestImplCopyWithImpl<$Res>
    extends _$LlmCompleteRequestCopyWithImpl<$Res, _$LlmCompleteRequestImpl>
    implements _$$LlmCompleteRequestImplCopyWith<$Res> {
  __$$LlmCompleteRequestImplCopyWithImpl(
    _$LlmCompleteRequestImpl _value,
    $Res Function(_$LlmCompleteRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LlmCompleteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? model = freezed,
    Object? jsonMode = null,
    Object? prompt = freezed,
    Object? promptVars = freezed,
  }) {
    return _then(
      _$LlmCompleteRequestImpl(
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<ChatMessage>,
        model: freezed == model
            ? _value.model
            : model // ignore: cast_nullable_to_non_nullable
                  as String?,
        jsonMode: null == jsonMode
            ? _value.jsonMode
            : jsonMode // ignore: cast_nullable_to_non_nullable
                  as bool,
        prompt: freezed == prompt
            ? _value.prompt
            : prompt // ignore: cast_nullable_to_non_nullable
                  as String?,
        promptVars: freezed == promptVars
            ? _value._promptVars
            : promptVars // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LlmCompleteRequestImpl implements _LlmCompleteRequest {
  const _$LlmCompleteRequestImpl({
    final List<ChatMessage> messages = const <ChatMessage>[],
    this.model,
    @JsonKey(name: 'json_mode') this.jsonMode = false,
    this.prompt,
    @JsonKey(name: 'prompt_vars') final Map<String, dynamic>? promptVars,
  }) : _messages = messages,
       _promptVars = promptVars;

  factory _$LlmCompleteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LlmCompleteRequestImplFromJson(json);

  final List<ChatMessage> _messages;
  @override
  @JsonKey()
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final String? model;
  @override
  @JsonKey(name: 'json_mode')
  final bool jsonMode;
  @override
  final String? prompt;
  final Map<String, dynamic>? _promptVars;
  @override
  @JsonKey(name: 'prompt_vars')
  Map<String, dynamic>? get promptVars {
    final value = _promptVars;
    if (value == null) return null;
    if (_promptVars is EqualUnmodifiableMapView) return _promptVars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'LlmCompleteRequest(messages: $messages, model: $model, jsonMode: $jsonMode, prompt: $prompt, promptVars: $promptVars)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LlmCompleteRequestImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.jsonMode, jsonMode) ||
                other.jsonMode == jsonMode) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            const DeepCollectionEquality().equals(
              other._promptVars,
              _promptVars,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_messages),
    model,
    jsonMode,
    prompt,
    const DeepCollectionEquality().hash(_promptVars),
  );

  /// Create a copy of LlmCompleteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LlmCompleteRequestImplCopyWith<_$LlmCompleteRequestImpl> get copyWith =>
      __$$LlmCompleteRequestImplCopyWithImpl<_$LlmCompleteRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LlmCompleteRequestImplToJson(this);
  }
}

abstract class _LlmCompleteRequest implements LlmCompleteRequest {
  const factory _LlmCompleteRequest({
    final List<ChatMessage> messages,
    final String? model,
    @JsonKey(name: 'json_mode') final bool jsonMode,
    final String? prompt,
    @JsonKey(name: 'prompt_vars') final Map<String, dynamic>? promptVars,
  }) = _$LlmCompleteRequestImpl;

  factory _LlmCompleteRequest.fromJson(Map<String, dynamic> json) =
      _$LlmCompleteRequestImpl.fromJson;

  @override
  List<ChatMessage> get messages;
  @override
  String? get model;
  @override
  @JsonKey(name: 'json_mode')
  bool get jsonMode;
  @override
  String? get prompt;
  @override
  @JsonKey(name: 'prompt_vars')
  Map<String, dynamic>? get promptVars;

  /// Create a copy of LlmCompleteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LlmCompleteRequestImplCopyWith<_$LlmCompleteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LlmCompleteResponse _$LlmCompleteResponseFromJson(Map<String, dynamic> json) {
  return _LlmCompleteResponse.fromJson(json);
}

/// @nodoc
mixin _$LlmCompleteResponse {
  String get content => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  @JsonKey(name: 'prompt_name')
  String? get promptName => throw _privateConstructorUsedError;
  @JsonKey(name: 'finish_reason')
  String? get finishReason => throw _privateConstructorUsedError;
  Map<String, dynamic> get usage => throw _privateConstructorUsedError;
  @JsonKey(name: 'latency_ms')
  int? get latencyMs => throw _privateConstructorUsedError;
  @JsonKey(name: 'fallback_used')
  bool get fallbackUsed => throw _privateConstructorUsedError;

  /// Serializes this LlmCompleteResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LlmCompleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LlmCompleteResponseCopyWith<LlmCompleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LlmCompleteResponseCopyWith<$Res> {
  factory $LlmCompleteResponseCopyWith(
    LlmCompleteResponse value,
    $Res Function(LlmCompleteResponse) then,
  ) = _$LlmCompleteResponseCopyWithImpl<$Res, LlmCompleteResponse>;
  @useResult
  $Res call({
    String content,
    String model,
    @JsonKey(name: 'prompt_name') String? promptName,
    @JsonKey(name: 'finish_reason') String? finishReason,
    Map<String, dynamic> usage,
    @JsonKey(name: 'latency_ms') int? latencyMs,
    @JsonKey(name: 'fallback_used') bool fallbackUsed,
  });
}

/// @nodoc
class _$LlmCompleteResponseCopyWithImpl<$Res, $Val extends LlmCompleteResponse>
    implements $LlmCompleteResponseCopyWith<$Res> {
  _$LlmCompleteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LlmCompleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? model = null,
    Object? promptName = freezed,
    Object? finishReason = freezed,
    Object? usage = null,
    Object? latencyMs = freezed,
    Object? fallbackUsed = null,
  }) {
    return _then(
      _value.copyWith(
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            model: null == model
                ? _value.model
                : model // ignore: cast_nullable_to_non_nullable
                      as String,
            promptName: freezed == promptName
                ? _value.promptName
                : promptName // ignore: cast_nullable_to_non_nullable
                      as String?,
            finishReason: freezed == finishReason
                ? _value.finishReason
                : finishReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            usage: null == usage
                ? _value.usage
                : usage // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            latencyMs: freezed == latencyMs
                ? _value.latencyMs
                : latencyMs // ignore: cast_nullable_to_non_nullable
                      as int?,
            fallbackUsed: null == fallbackUsed
                ? _value.fallbackUsed
                : fallbackUsed // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LlmCompleteResponseImplCopyWith<$Res>
    implements $LlmCompleteResponseCopyWith<$Res> {
  factory _$$LlmCompleteResponseImplCopyWith(
    _$LlmCompleteResponseImpl value,
    $Res Function(_$LlmCompleteResponseImpl) then,
  ) = __$$LlmCompleteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String content,
    String model,
    @JsonKey(name: 'prompt_name') String? promptName,
    @JsonKey(name: 'finish_reason') String? finishReason,
    Map<String, dynamic> usage,
    @JsonKey(name: 'latency_ms') int? latencyMs,
    @JsonKey(name: 'fallback_used') bool fallbackUsed,
  });
}

/// @nodoc
class __$$LlmCompleteResponseImplCopyWithImpl<$Res>
    extends _$LlmCompleteResponseCopyWithImpl<$Res, _$LlmCompleteResponseImpl>
    implements _$$LlmCompleteResponseImplCopyWith<$Res> {
  __$$LlmCompleteResponseImplCopyWithImpl(
    _$LlmCompleteResponseImpl _value,
    $Res Function(_$LlmCompleteResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LlmCompleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? model = null,
    Object? promptName = freezed,
    Object? finishReason = freezed,
    Object? usage = null,
    Object? latencyMs = freezed,
    Object? fallbackUsed = null,
  }) {
    return _then(
      _$LlmCompleteResponseImpl(
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        model: null == model
            ? _value.model
            : model // ignore: cast_nullable_to_non_nullable
                  as String,
        promptName: freezed == promptName
            ? _value.promptName
            : promptName // ignore: cast_nullable_to_non_nullable
                  as String?,
        finishReason: freezed == finishReason
            ? _value.finishReason
            : finishReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        usage: null == usage
            ? _value._usage
            : usage // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        latencyMs: freezed == latencyMs
            ? _value.latencyMs
            : latencyMs // ignore: cast_nullable_to_non_nullable
                  as int?,
        fallbackUsed: null == fallbackUsed
            ? _value.fallbackUsed
            : fallbackUsed // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LlmCompleteResponseImpl implements _LlmCompleteResponse {
  const _$LlmCompleteResponseImpl({
    required this.content,
    required this.model,
    @JsonKey(name: 'prompt_name') this.promptName,
    @JsonKey(name: 'finish_reason') this.finishReason,
    final Map<String, dynamic> usage = const <String, dynamic>{},
    @JsonKey(name: 'latency_ms') this.latencyMs,
    @JsonKey(name: 'fallback_used') this.fallbackUsed = false,
  }) : _usage = usage;

  factory _$LlmCompleteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LlmCompleteResponseImplFromJson(json);

  @override
  final String content;
  @override
  final String model;
  @override
  @JsonKey(name: 'prompt_name')
  final String? promptName;
  @override
  @JsonKey(name: 'finish_reason')
  final String? finishReason;
  final Map<String, dynamic> _usage;
  @override
  @JsonKey()
  Map<String, dynamic> get usage {
    if (_usage is EqualUnmodifiableMapView) return _usage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_usage);
  }

  @override
  @JsonKey(name: 'latency_ms')
  final int? latencyMs;
  @override
  @JsonKey(name: 'fallback_used')
  final bool fallbackUsed;

  @override
  String toString() {
    return 'LlmCompleteResponse(content: $content, model: $model, promptName: $promptName, finishReason: $finishReason, usage: $usage, latencyMs: $latencyMs, fallbackUsed: $fallbackUsed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LlmCompleteResponseImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.promptName, promptName) ||
                other.promptName == promptName) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason) &&
            const DeepCollectionEquality().equals(other._usage, _usage) &&
            (identical(other.latencyMs, latencyMs) ||
                other.latencyMs == latencyMs) &&
            (identical(other.fallbackUsed, fallbackUsed) ||
                other.fallbackUsed == fallbackUsed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    content,
    model,
    promptName,
    finishReason,
    const DeepCollectionEquality().hash(_usage),
    latencyMs,
    fallbackUsed,
  );

  /// Create a copy of LlmCompleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LlmCompleteResponseImplCopyWith<_$LlmCompleteResponseImpl> get copyWith =>
      __$$LlmCompleteResponseImplCopyWithImpl<_$LlmCompleteResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LlmCompleteResponseImplToJson(this);
  }
}

abstract class _LlmCompleteResponse implements LlmCompleteResponse {
  const factory _LlmCompleteResponse({
    required final String content,
    required final String model,
    @JsonKey(name: 'prompt_name') final String? promptName,
    @JsonKey(name: 'finish_reason') final String? finishReason,
    final Map<String, dynamic> usage,
    @JsonKey(name: 'latency_ms') final int? latencyMs,
    @JsonKey(name: 'fallback_used') final bool fallbackUsed,
  }) = _$LlmCompleteResponseImpl;

  factory _LlmCompleteResponse.fromJson(Map<String, dynamic> json) =
      _$LlmCompleteResponseImpl.fromJson;

  @override
  String get content;
  @override
  String get model;
  @override
  @JsonKey(name: 'prompt_name')
  String? get promptName;
  @override
  @JsonKey(name: 'finish_reason')
  String? get finishReason;
  @override
  Map<String, dynamic> get usage;
  @override
  @JsonKey(name: 'latency_ms')
  int? get latencyMs;
  @override
  @JsonKey(name: 'fallback_used')
  bool get fallbackUsed;

  /// Create a copy of LlmCompleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LlmCompleteResponseImplCopyWith<_$LlmCompleteResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
