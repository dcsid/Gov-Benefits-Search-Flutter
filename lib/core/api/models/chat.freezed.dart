// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return _ChatMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatMessage {
  String get role => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this ChatMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
    ChatMessage value,
    $Res Function(ChatMessage) then,
  ) = _$ChatMessageCopyWithImpl<$Res, ChatMessage>;
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res, $Val extends ChatMessage>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? role = null, Object? content = null}) {
    return _then(
      _value.copyWith(
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatMessageImplCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$$ChatMessageImplCopyWith(
    _$ChatMessageImpl value,
    $Res Function(_$ChatMessageImpl) then,
  ) = __$$ChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class __$$ChatMessageImplCopyWithImpl<$Res>
    extends _$ChatMessageCopyWithImpl<$Res, _$ChatMessageImpl>
    implements _$$ChatMessageImplCopyWith<$Res> {
  __$$ChatMessageImplCopyWithImpl(
    _$ChatMessageImpl _value,
    $Res Function(_$ChatMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? role = null, Object? content = null}) {
    return _then(
      _$ChatMessageImpl(
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageImpl implements _ChatMessage {
  const _$ChatMessageImpl({required this.role, required this.content});

  factory _$ChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageImplFromJson(json);

  @override
  final String role;
  @override
  final String content;

  @override
  String toString() {
    return 'ChatMessage(role: $role, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role, content);

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      __$$ChatMessageImplCopyWithImpl<_$ChatMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageImplToJson(this);
  }
}

abstract class _ChatMessage implements ChatMessage {
  const factory _ChatMessage({
    required final String role,
    required final String content,
  }) = _$ChatMessageImpl;

  factory _ChatMessage.fromJson(Map<String, dynamic> json) =
      _$ChatMessageImpl.fromJson;

  @override
  String get role;
  @override
  String get content;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatStreamRequest _$ChatStreamRequestFromJson(Map<String, dynamic> json) {
  return _ChatStreamRequest.fromJson(json);
}

/// @nodoc
mixin _$ChatStreamRequest {
  @JsonKey(name: 'session_id')
  String? get sessionId => throw _privateConstructorUsedError;
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  @JsonKey(name: 'context_mode')
  String get contextMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'program_slug')
  String? get programSlug => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;

  /// Serializes this ChatStreamRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatStreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatStreamRequestCopyWith<ChatStreamRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStreamRequestCopyWith<$Res> {
  factory $ChatStreamRequestCopyWith(
    ChatStreamRequest value,
    $Res Function(ChatStreamRequest) then,
  ) = _$ChatStreamRequestCopyWithImpl<$Res, ChatStreamRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'session_id') String? sessionId,
    List<ChatMessage> messages,
    @JsonKey(name: 'context_mode') String contextMode,
    @JsonKey(name: 'program_slug') String? programSlug,
    String? model,
  });
}

/// @nodoc
class _$ChatStreamRequestCopyWithImpl<$Res, $Val extends ChatStreamRequest>
    implements $ChatStreamRequestCopyWith<$Res> {
  _$ChatStreamRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatStreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
    Object? messages = null,
    Object? contextMode = null,
    Object? programSlug = freezed,
    Object? model = freezed,
  }) {
    return _then(
      _value.copyWith(
            sessionId: freezed == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as String?,
            messages: null == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as List<ChatMessage>,
            contextMode: null == contextMode
                ? _value.contextMode
                : contextMode // ignore: cast_nullable_to_non_nullable
                      as String,
            programSlug: freezed == programSlug
                ? _value.programSlug
                : programSlug // ignore: cast_nullable_to_non_nullable
                      as String?,
            model: freezed == model
                ? _value.model
                : model // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatStreamRequestImplCopyWith<$Res>
    implements $ChatStreamRequestCopyWith<$Res> {
  factory _$$ChatStreamRequestImplCopyWith(
    _$ChatStreamRequestImpl value,
    $Res Function(_$ChatStreamRequestImpl) then,
  ) = __$$ChatStreamRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'session_id') String? sessionId,
    List<ChatMessage> messages,
    @JsonKey(name: 'context_mode') String contextMode,
    @JsonKey(name: 'program_slug') String? programSlug,
    String? model,
  });
}

/// @nodoc
class __$$ChatStreamRequestImplCopyWithImpl<$Res>
    extends _$ChatStreamRequestCopyWithImpl<$Res, _$ChatStreamRequestImpl>
    implements _$$ChatStreamRequestImplCopyWith<$Res> {
  __$$ChatStreamRequestImplCopyWithImpl(
    _$ChatStreamRequestImpl _value,
    $Res Function(_$ChatStreamRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatStreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
    Object? messages = null,
    Object? contextMode = null,
    Object? programSlug = freezed,
    Object? model = freezed,
  }) {
    return _then(
      _$ChatStreamRequestImpl(
        sessionId: freezed == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String?,
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<ChatMessage>,
        contextMode: null == contextMode
            ? _value.contextMode
            : contextMode // ignore: cast_nullable_to_non_nullable
                  as String,
        programSlug: freezed == programSlug
            ? _value.programSlug
            : programSlug // ignore: cast_nullable_to_non_nullable
                  as String?,
        model: freezed == model
            ? _value.model
            : model // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatStreamRequestImpl implements _ChatStreamRequest {
  const _$ChatStreamRequestImpl({
    @JsonKey(name: 'session_id') this.sessionId,
    required final List<ChatMessage> messages,
    @JsonKey(name: 'context_mode') this.contextMode = 'general',
    @JsonKey(name: 'program_slug') this.programSlug,
    this.model,
  }) : _messages = messages;

  factory _$ChatStreamRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatStreamRequestImplFromJson(json);

  @override
  @JsonKey(name: 'session_id')
  final String? sessionId;
  final List<ChatMessage> _messages;
  @override
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey(name: 'context_mode')
  final String contextMode;
  @override
  @JsonKey(name: 'program_slug')
  final String? programSlug;
  @override
  final String? model;

  @override
  String toString() {
    return 'ChatStreamRequest(sessionId: $sessionId, messages: $messages, contextMode: $contextMode, programSlug: $programSlug, model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStreamRequestImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.contextMode, contextMode) ||
                other.contextMode == contextMode) &&
            (identical(other.programSlug, programSlug) ||
                other.programSlug == programSlug) &&
            (identical(other.model, model) || other.model == model));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    sessionId,
    const DeepCollectionEquality().hash(_messages),
    contextMode,
    programSlug,
    model,
  );

  /// Create a copy of ChatStreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStreamRequestImplCopyWith<_$ChatStreamRequestImpl> get copyWith =>
      __$$ChatStreamRequestImplCopyWithImpl<_$ChatStreamRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatStreamRequestImplToJson(this);
  }
}

abstract class _ChatStreamRequest implements ChatStreamRequest {
  const factory _ChatStreamRequest({
    @JsonKey(name: 'session_id') final String? sessionId,
    required final List<ChatMessage> messages,
    @JsonKey(name: 'context_mode') final String contextMode,
    @JsonKey(name: 'program_slug') final String? programSlug,
    final String? model,
  }) = _$ChatStreamRequestImpl;

  factory _ChatStreamRequest.fromJson(Map<String, dynamic> json) =
      _$ChatStreamRequestImpl.fromJson;

  @override
  @JsonKey(name: 'session_id')
  String? get sessionId;
  @override
  List<ChatMessage> get messages;
  @override
  @JsonKey(name: 'context_mode')
  String get contextMode;
  @override
  @JsonKey(name: 'program_slug')
  String? get programSlug;
  @override
  String? get model;

  /// Create a copy of ChatStreamRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStreamRequestImplCopyWith<_$ChatStreamRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatToolCall _$ChatToolCallFromJson(Map<String, dynamic> json) {
  return _ChatToolCall.fromJson(json);
}

/// @nodoc
mixin _$ChatToolCall {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Map<String, dynamic> get args => throw _privateConstructorUsedError;
  Object? get result => throw _privateConstructorUsedError;

  /// Serializes this ChatToolCall to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatToolCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatToolCallCopyWith<ChatToolCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatToolCallCopyWith<$Res> {
  factory $ChatToolCallCopyWith(
    ChatToolCall value,
    $Res Function(ChatToolCall) then,
  ) = _$ChatToolCallCopyWithImpl<$Res, ChatToolCall>;
  @useResult
  $Res call({
    String id,
    String name,
    Map<String, dynamic> args,
    Object? result,
  });
}

/// @nodoc
class _$ChatToolCallCopyWithImpl<$Res, $Val extends ChatToolCall>
    implements $ChatToolCallCopyWith<$Res> {
  _$ChatToolCallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatToolCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? args = null,
    Object? result = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            args: null == args
                ? _value.args
                : args // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            result: freezed == result ? _value.result : result,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatToolCallImplCopyWith<$Res>
    implements $ChatToolCallCopyWith<$Res> {
  factory _$$ChatToolCallImplCopyWith(
    _$ChatToolCallImpl value,
    $Res Function(_$ChatToolCallImpl) then,
  ) = __$$ChatToolCallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    Map<String, dynamic> args,
    Object? result,
  });
}

/// @nodoc
class __$$ChatToolCallImplCopyWithImpl<$Res>
    extends _$ChatToolCallCopyWithImpl<$Res, _$ChatToolCallImpl>
    implements _$$ChatToolCallImplCopyWith<$Res> {
  __$$ChatToolCallImplCopyWithImpl(
    _$ChatToolCallImpl _value,
    $Res Function(_$ChatToolCallImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatToolCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? args = null,
    Object? result = freezed,
  }) {
    return _then(
      _$ChatToolCallImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        args: null == args
            ? _value._args
            : args // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        result: freezed == result ? _value.result : result,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatToolCallImpl implements _ChatToolCall {
  const _$ChatToolCallImpl({
    required this.id,
    required this.name,
    final Map<String, dynamic> args = const <String, dynamic>{},
    this.result,
  }) : _args = args;

  factory _$ChatToolCallImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatToolCallImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final Map<String, dynamic> _args;
  @override
  @JsonKey()
  Map<String, dynamic> get args {
    if (_args is EqualUnmodifiableMapView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_args);
  }

  @override
  final Object? result;

  @override
  String toString() {
    return 'ChatToolCall(id: $id, name: $name, args: $args, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatToolCallImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._args, _args) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    const DeepCollectionEquality().hash(_args),
    const DeepCollectionEquality().hash(result),
  );

  /// Create a copy of ChatToolCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatToolCallImplCopyWith<_$ChatToolCallImpl> get copyWith =>
      __$$ChatToolCallImplCopyWithImpl<_$ChatToolCallImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatToolCallImplToJson(this);
  }
}

abstract class _ChatToolCall implements ChatToolCall {
  const factory _ChatToolCall({
    required final String id,
    required final String name,
    final Map<String, dynamic> args,
    final Object? result,
  }) = _$ChatToolCallImpl;

  factory _ChatToolCall.fromJson(Map<String, dynamic> json) =
      _$ChatToolCallImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Map<String, dynamic> get args;
  @override
  Object? get result;

  /// Create a copy of ChatToolCall
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatToolCallImplCopyWith<_$ChatToolCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatStreamEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String delta) token,
    required TResult Function(String id, String name, Map<String, dynamic> args)
    toolCall,
    required TResult Function(String id, Object? result) toolResult,
    required TResult Function(int index, String title, String url) citation,
    required TResult Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )
    done,
    required TResult Function(String message, String? code) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String delta)? token,
    TResult? Function(String id, String name, Map<String, dynamic> args)?
    toolCall,
    TResult? Function(String id, Object? result)? toolResult,
    TResult? Function(int index, String title, String url)? citation,
    TResult? Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )?
    done,
    TResult? Function(String message, String? code)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String delta)? token,
    TResult Function(String id, String name, Map<String, dynamic> args)?
    toolCall,
    TResult Function(String id, Object? result)? toolResult,
    TResult Function(int index, String title, String url)? citation,
    TResult Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )?
    done,
    TResult Function(String message, String? code)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatStreamTokenEvent value) token,
    required TResult Function(ChatStreamToolCallEvent value) toolCall,
    required TResult Function(ChatStreamToolResultEvent value) toolResult,
    required TResult Function(ChatStreamCitationEvent value) citation,
    required TResult Function(ChatStreamDoneEvent value) done,
    required TResult Function(ChatStreamErrorEvent value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatStreamTokenEvent value)? token,
    TResult? Function(ChatStreamToolCallEvent value)? toolCall,
    TResult? Function(ChatStreamToolResultEvent value)? toolResult,
    TResult? Function(ChatStreamCitationEvent value)? citation,
    TResult? Function(ChatStreamDoneEvent value)? done,
    TResult? Function(ChatStreamErrorEvent value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatStreamTokenEvent value)? token,
    TResult Function(ChatStreamToolCallEvent value)? toolCall,
    TResult Function(ChatStreamToolResultEvent value)? toolResult,
    TResult Function(ChatStreamCitationEvent value)? citation,
    TResult Function(ChatStreamDoneEvent value)? done,
    TResult Function(ChatStreamErrorEvent value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStreamEventCopyWith<$Res> {
  factory $ChatStreamEventCopyWith(
    ChatStreamEvent value,
    $Res Function(ChatStreamEvent) then,
  ) = _$ChatStreamEventCopyWithImpl<$Res, ChatStreamEvent>;
}

/// @nodoc
class _$ChatStreamEventCopyWithImpl<$Res, $Val extends ChatStreamEvent>
    implements $ChatStreamEventCopyWith<$Res> {
  _$ChatStreamEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatStreamEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChatStreamTokenEventImplCopyWith<$Res> {
  factory _$$ChatStreamTokenEventImplCopyWith(
    _$ChatStreamTokenEventImpl value,
    $Res Function(_$ChatStreamTokenEventImpl) then,
  ) = __$$ChatStreamTokenEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String delta});
}

/// @nodoc
class __$$ChatStreamTokenEventImplCopyWithImpl<$Res>
    extends _$ChatStreamEventCopyWithImpl<$Res, _$ChatStreamTokenEventImpl>
    implements _$$ChatStreamTokenEventImplCopyWith<$Res> {
  __$$ChatStreamTokenEventImplCopyWithImpl(
    _$ChatStreamTokenEventImpl _value,
    $Res Function(_$ChatStreamTokenEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? delta = null}) {
    return _then(
      _$ChatStreamTokenEventImpl(
        null == delta
            ? _value.delta
            : delta // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ChatStreamTokenEventImpl implements ChatStreamTokenEvent {
  const _$ChatStreamTokenEventImpl(this.delta);

  @override
  final String delta;

  @override
  String toString() {
    return 'ChatStreamEvent.token(delta: $delta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStreamTokenEventImpl &&
            (identical(other.delta, delta) || other.delta == delta));
  }

  @override
  int get hashCode => Object.hash(runtimeType, delta);

  /// Create a copy of ChatStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStreamTokenEventImplCopyWith<_$ChatStreamTokenEventImpl>
  get copyWith =>
      __$$ChatStreamTokenEventImplCopyWithImpl<_$ChatStreamTokenEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String delta) token,
    required TResult Function(String id, String name, Map<String, dynamic> args)
    toolCall,
    required TResult Function(String id, Object? result) toolResult,
    required TResult Function(int index, String title, String url) citation,
    required TResult Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )
    done,
    required TResult Function(String message, String? code) error,
  }) {
    return token(delta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String delta)? token,
    TResult? Function(String id, String name, Map<String, dynamic> args)?
    toolCall,
    TResult? Function(String id, Object? result)? toolResult,
    TResult? Function(int index, String title, String url)? citation,
    TResult? Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )?
    done,
    TResult? Function(String message, String? code)? error,
  }) {
    return token?.call(delta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String delta)? token,
    TResult Function(String id, String name, Map<String, dynamic> args)?
    toolCall,
    TResult Function(String id, Object? result)? toolResult,
    TResult Function(int index, String title, String url)? citation,
    TResult Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )?
    done,
    TResult Function(String message, String? code)? error,
    required TResult orElse(),
  }) {
    if (token != null) {
      return token(delta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatStreamTokenEvent value) token,
    required TResult Function(ChatStreamToolCallEvent value) toolCall,
    required TResult Function(ChatStreamToolResultEvent value) toolResult,
    required TResult Function(ChatStreamCitationEvent value) citation,
    required TResult Function(ChatStreamDoneEvent value) done,
    required TResult Function(ChatStreamErrorEvent value) error,
  }) {
    return token(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatStreamTokenEvent value)? token,
    TResult? Function(ChatStreamToolCallEvent value)? toolCall,
    TResult? Function(ChatStreamToolResultEvent value)? toolResult,
    TResult? Function(ChatStreamCitationEvent value)? citation,
    TResult? Function(ChatStreamDoneEvent value)? done,
    TResult? Function(ChatStreamErrorEvent value)? error,
  }) {
    return token?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatStreamTokenEvent value)? token,
    TResult Function(ChatStreamToolCallEvent value)? toolCall,
    TResult Function(ChatStreamToolResultEvent value)? toolResult,
    TResult Function(ChatStreamCitationEvent value)? citation,
    TResult Function(ChatStreamDoneEvent value)? done,
    TResult Function(ChatStreamErrorEvent value)? error,
    required TResult orElse(),
  }) {
    if (token != null) {
      return token(this);
    }
    return orElse();
  }
}

abstract class ChatStreamTokenEvent implements ChatStreamEvent {
  const factory ChatStreamTokenEvent(final String delta) =
      _$ChatStreamTokenEventImpl;

  String get delta;

  /// Create a copy of ChatStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStreamTokenEventImplCopyWith<_$ChatStreamTokenEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatStreamToolCallEventImplCopyWith<$Res> {
  factory _$$ChatStreamToolCallEventImplCopyWith(
    _$ChatStreamToolCallEventImpl value,
    $Res Function(_$ChatStreamToolCallEventImpl) then,
  ) = __$$ChatStreamToolCallEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String name, Map<String, dynamic> args});
}

/// @nodoc
class __$$ChatStreamToolCallEventImplCopyWithImpl<$Res>
    extends _$ChatStreamEventCopyWithImpl<$Res, _$ChatStreamToolCallEventImpl>
    implements _$$ChatStreamToolCallEventImplCopyWith<$Res> {
  __$$ChatStreamToolCallEventImplCopyWithImpl(
    _$ChatStreamToolCallEventImpl _value,
    $Res Function(_$ChatStreamToolCallEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? args = null}) {
    return _then(
      _$ChatStreamToolCallEventImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        args: null == args
            ? _value._args
            : args // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$ChatStreamToolCallEventImpl implements ChatStreamToolCallEvent {
  const _$ChatStreamToolCallEventImpl({
    required this.id,
    required this.name,
    final Map<String, dynamic> args = const <String, dynamic>{},
  }) : _args = args;

  @override
  final String id;
  @override
  final String name;
  final Map<String, dynamic> _args;
  @override
  @JsonKey()
  Map<String, dynamic> get args {
    if (_args is EqualUnmodifiableMapView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_args);
  }

  @override
  String toString() {
    return 'ChatStreamEvent.toolCall(id: $id, name: $name, args: $args)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStreamToolCallEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._args, _args));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    const DeepCollectionEquality().hash(_args),
  );

  /// Create a copy of ChatStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStreamToolCallEventImplCopyWith<_$ChatStreamToolCallEventImpl>
  get copyWith =>
      __$$ChatStreamToolCallEventImplCopyWithImpl<
        _$ChatStreamToolCallEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String delta) token,
    required TResult Function(String id, String name, Map<String, dynamic> args)
    toolCall,
    required TResult Function(String id, Object? result) toolResult,
    required TResult Function(int index, String title, String url) citation,
    required TResult Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )
    done,
    required TResult Function(String message, String? code) error,
  }) {
    return toolCall(id, name, args);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String delta)? token,
    TResult? Function(String id, String name, Map<String, dynamic> args)?
    toolCall,
    TResult? Function(String id, Object? result)? toolResult,
    TResult? Function(int index, String title, String url)? citation,
    TResult? Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )?
    done,
    TResult? Function(String message, String? code)? error,
  }) {
    return toolCall?.call(id, name, args);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String delta)? token,
    TResult Function(String id, String name, Map<String, dynamic> args)?
    toolCall,
    TResult Function(String id, Object? result)? toolResult,
    TResult Function(int index, String title, String url)? citation,
    TResult Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )?
    done,
    TResult Function(String message, String? code)? error,
    required TResult orElse(),
  }) {
    if (toolCall != null) {
      return toolCall(id, name, args);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatStreamTokenEvent value) token,
    required TResult Function(ChatStreamToolCallEvent value) toolCall,
    required TResult Function(ChatStreamToolResultEvent value) toolResult,
    required TResult Function(ChatStreamCitationEvent value) citation,
    required TResult Function(ChatStreamDoneEvent value) done,
    required TResult Function(ChatStreamErrorEvent value) error,
  }) {
    return toolCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatStreamTokenEvent value)? token,
    TResult? Function(ChatStreamToolCallEvent value)? toolCall,
    TResult? Function(ChatStreamToolResultEvent value)? toolResult,
    TResult? Function(ChatStreamCitationEvent value)? citation,
    TResult? Function(ChatStreamDoneEvent value)? done,
    TResult? Function(ChatStreamErrorEvent value)? error,
  }) {
    return toolCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatStreamTokenEvent value)? token,
    TResult Function(ChatStreamToolCallEvent value)? toolCall,
    TResult Function(ChatStreamToolResultEvent value)? toolResult,
    TResult Function(ChatStreamCitationEvent value)? citation,
    TResult Function(ChatStreamDoneEvent value)? done,
    TResult Function(ChatStreamErrorEvent value)? error,
    required TResult orElse(),
  }) {
    if (toolCall != null) {
      return toolCall(this);
    }
    return orElse();
  }
}

abstract class ChatStreamToolCallEvent implements ChatStreamEvent {
  const factory ChatStreamToolCallEvent({
    required final String id,
    required final String name,
    final Map<String, dynamic> args,
  }) = _$ChatStreamToolCallEventImpl;

  String get id;
  String get name;
  Map<String, dynamic> get args;

  /// Create a copy of ChatStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStreamToolCallEventImplCopyWith<_$ChatStreamToolCallEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatStreamToolResultEventImplCopyWith<$Res> {
  factory _$$ChatStreamToolResultEventImplCopyWith(
    _$ChatStreamToolResultEventImpl value,
    $Res Function(_$ChatStreamToolResultEventImpl) then,
  ) = __$$ChatStreamToolResultEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, Object? result});
}

/// @nodoc
class __$$ChatStreamToolResultEventImplCopyWithImpl<$Res>
    extends _$ChatStreamEventCopyWithImpl<$Res, _$ChatStreamToolResultEventImpl>
    implements _$$ChatStreamToolResultEventImplCopyWith<$Res> {
  __$$ChatStreamToolResultEventImplCopyWithImpl(
    _$ChatStreamToolResultEventImpl _value,
    $Res Function(_$ChatStreamToolResultEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? result = freezed}) {
    return _then(
      _$ChatStreamToolResultEventImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        result: freezed == result ? _value.result : result,
      ),
    );
  }
}

/// @nodoc

class _$ChatStreamToolResultEventImpl implements ChatStreamToolResultEvent {
  const _$ChatStreamToolResultEventImpl({required this.id, this.result});

  @override
  final String id;
  @override
  final Object? result;

  @override
  String toString() {
    return 'ChatStreamEvent.toolResult(id: $id, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStreamToolResultEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(result));

  /// Create a copy of ChatStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStreamToolResultEventImplCopyWith<_$ChatStreamToolResultEventImpl>
  get copyWith =>
      __$$ChatStreamToolResultEventImplCopyWithImpl<
        _$ChatStreamToolResultEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String delta) token,
    required TResult Function(String id, String name, Map<String, dynamic> args)
    toolCall,
    required TResult Function(String id, Object? result) toolResult,
    required TResult Function(int index, String title, String url) citation,
    required TResult Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )
    done,
    required TResult Function(String message, String? code) error,
  }) {
    return toolResult(id, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String delta)? token,
    TResult? Function(String id, String name, Map<String, dynamic> args)?
    toolCall,
    TResult? Function(String id, Object? result)? toolResult,
    TResult? Function(int index, String title, String url)? citation,
    TResult? Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )?
    done,
    TResult? Function(String message, String? code)? error,
  }) {
    return toolResult?.call(id, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String delta)? token,
    TResult Function(String id, String name, Map<String, dynamic> args)?
    toolCall,
    TResult Function(String id, Object? result)? toolResult,
    TResult Function(int index, String title, String url)? citation,
    TResult Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )?
    done,
    TResult Function(String message, String? code)? error,
    required TResult orElse(),
  }) {
    if (toolResult != null) {
      return toolResult(id, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatStreamTokenEvent value) token,
    required TResult Function(ChatStreamToolCallEvent value) toolCall,
    required TResult Function(ChatStreamToolResultEvent value) toolResult,
    required TResult Function(ChatStreamCitationEvent value) citation,
    required TResult Function(ChatStreamDoneEvent value) done,
    required TResult Function(ChatStreamErrorEvent value) error,
  }) {
    return toolResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatStreamTokenEvent value)? token,
    TResult? Function(ChatStreamToolCallEvent value)? toolCall,
    TResult? Function(ChatStreamToolResultEvent value)? toolResult,
    TResult? Function(ChatStreamCitationEvent value)? citation,
    TResult? Function(ChatStreamDoneEvent value)? done,
    TResult? Function(ChatStreamErrorEvent value)? error,
  }) {
    return toolResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatStreamTokenEvent value)? token,
    TResult Function(ChatStreamToolCallEvent value)? toolCall,
    TResult Function(ChatStreamToolResultEvent value)? toolResult,
    TResult Function(ChatStreamCitationEvent value)? citation,
    TResult Function(ChatStreamDoneEvent value)? done,
    TResult Function(ChatStreamErrorEvent value)? error,
    required TResult orElse(),
  }) {
    if (toolResult != null) {
      return toolResult(this);
    }
    return orElse();
  }
}

abstract class ChatStreamToolResultEvent implements ChatStreamEvent {
  const factory ChatStreamToolResultEvent({
    required final String id,
    final Object? result,
  }) = _$ChatStreamToolResultEventImpl;

  String get id;
  Object? get result;

  /// Create a copy of ChatStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStreamToolResultEventImplCopyWith<_$ChatStreamToolResultEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatStreamCitationEventImplCopyWith<$Res> {
  factory _$$ChatStreamCitationEventImplCopyWith(
    _$ChatStreamCitationEventImpl value,
    $Res Function(_$ChatStreamCitationEventImpl) then,
  ) = __$$ChatStreamCitationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, String title, String url});
}

/// @nodoc
class __$$ChatStreamCitationEventImplCopyWithImpl<$Res>
    extends _$ChatStreamEventCopyWithImpl<$Res, _$ChatStreamCitationEventImpl>
    implements _$$ChatStreamCitationEventImplCopyWith<$Res> {
  __$$ChatStreamCitationEventImplCopyWithImpl(
    _$ChatStreamCitationEventImpl _value,
    $Res Function(_$ChatStreamCitationEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null, Object? title = null, Object? url = null}) {
    return _then(
      _$ChatStreamCitationEventImpl(
        index: null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ChatStreamCitationEventImpl implements ChatStreamCitationEvent {
  const _$ChatStreamCitationEventImpl({
    required this.index,
    required this.title,
    required this.url,
  });

  @override
  final int index;
  @override
  final String title;
  @override
  final String url;

  @override
  String toString() {
    return 'ChatStreamEvent.citation(index: $index, title: $title, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStreamCitationEventImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, title, url);

  /// Create a copy of ChatStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStreamCitationEventImplCopyWith<_$ChatStreamCitationEventImpl>
  get copyWith =>
      __$$ChatStreamCitationEventImplCopyWithImpl<
        _$ChatStreamCitationEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String delta) token,
    required TResult Function(String id, String name, Map<String, dynamic> args)
    toolCall,
    required TResult Function(String id, Object? result) toolResult,
    required TResult Function(int index, String title, String url) citation,
    required TResult Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )
    done,
    required TResult Function(String message, String? code) error,
  }) {
    return citation(index, title, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String delta)? token,
    TResult? Function(String id, String name, Map<String, dynamic> args)?
    toolCall,
    TResult? Function(String id, Object? result)? toolResult,
    TResult? Function(int index, String title, String url)? citation,
    TResult? Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )?
    done,
    TResult? Function(String message, String? code)? error,
  }) {
    return citation?.call(index, title, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String delta)? token,
    TResult Function(String id, String name, Map<String, dynamic> args)?
    toolCall,
    TResult Function(String id, Object? result)? toolResult,
    TResult Function(int index, String title, String url)? citation,
    TResult Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )?
    done,
    TResult Function(String message, String? code)? error,
    required TResult orElse(),
  }) {
    if (citation != null) {
      return citation(index, title, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatStreamTokenEvent value) token,
    required TResult Function(ChatStreamToolCallEvent value) toolCall,
    required TResult Function(ChatStreamToolResultEvent value) toolResult,
    required TResult Function(ChatStreamCitationEvent value) citation,
    required TResult Function(ChatStreamDoneEvent value) done,
    required TResult Function(ChatStreamErrorEvent value) error,
  }) {
    return citation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatStreamTokenEvent value)? token,
    TResult? Function(ChatStreamToolCallEvent value)? toolCall,
    TResult? Function(ChatStreamToolResultEvent value)? toolResult,
    TResult? Function(ChatStreamCitationEvent value)? citation,
    TResult? Function(ChatStreamDoneEvent value)? done,
    TResult? Function(ChatStreamErrorEvent value)? error,
  }) {
    return citation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatStreamTokenEvent value)? token,
    TResult Function(ChatStreamToolCallEvent value)? toolCall,
    TResult Function(ChatStreamToolResultEvent value)? toolResult,
    TResult Function(ChatStreamCitationEvent value)? citation,
    TResult Function(ChatStreamDoneEvent value)? done,
    TResult Function(ChatStreamErrorEvent value)? error,
    required TResult orElse(),
  }) {
    if (citation != null) {
      return citation(this);
    }
    return orElse();
  }
}

abstract class ChatStreamCitationEvent implements ChatStreamEvent {
  const factory ChatStreamCitationEvent({
    required final int index,
    required final String title,
    required final String url,
  }) = _$ChatStreamCitationEventImpl;

  int get index;
  String get title;
  String get url;

  /// Create a copy of ChatStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStreamCitationEventImplCopyWith<_$ChatStreamCitationEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatStreamDoneEventImplCopyWith<$Res> {
  factory _$$ChatStreamDoneEventImplCopyWith(
    _$ChatStreamDoneEventImpl value,
    $Res Function(_$ChatStreamDoneEventImpl) then,
  ) = __$$ChatStreamDoneEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String? finishReason,
    Map<String, dynamic>? usage,
    String? model,
    bool? fallbackUsed,
  });
}

/// @nodoc
class __$$ChatStreamDoneEventImplCopyWithImpl<$Res>
    extends _$ChatStreamEventCopyWithImpl<$Res, _$ChatStreamDoneEventImpl>
    implements _$$ChatStreamDoneEventImplCopyWith<$Res> {
  __$$ChatStreamDoneEventImplCopyWithImpl(
    _$ChatStreamDoneEventImpl _value,
    $Res Function(_$ChatStreamDoneEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finishReason = freezed,
    Object? usage = freezed,
    Object? model = freezed,
    Object? fallbackUsed = freezed,
  }) {
    return _then(
      _$ChatStreamDoneEventImpl(
        finishReason: freezed == finishReason
            ? _value.finishReason
            : finishReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        usage: freezed == usage
            ? _value._usage
            : usage // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        model: freezed == model
            ? _value.model
            : model // ignore: cast_nullable_to_non_nullable
                  as String?,
        fallbackUsed: freezed == fallbackUsed
            ? _value.fallbackUsed
            : fallbackUsed // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc

class _$ChatStreamDoneEventImpl implements ChatStreamDoneEvent {
  const _$ChatStreamDoneEventImpl({
    this.finishReason,
    final Map<String, dynamic>? usage,
    this.model,
    this.fallbackUsed,
  }) : _usage = usage;

  @override
  final String? finishReason;
  final Map<String, dynamic>? _usage;
  @override
  Map<String, dynamic>? get usage {
    final value = _usage;
    if (value == null) return null;
    if (_usage is EqualUnmodifiableMapView) return _usage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? model;
  @override
  final bool? fallbackUsed;

  @override
  String toString() {
    return 'ChatStreamEvent.done(finishReason: $finishReason, usage: $usage, model: $model, fallbackUsed: $fallbackUsed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStreamDoneEventImpl &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason) &&
            const DeepCollectionEquality().equals(other._usage, _usage) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.fallbackUsed, fallbackUsed) ||
                other.fallbackUsed == fallbackUsed));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    finishReason,
    const DeepCollectionEquality().hash(_usage),
    model,
    fallbackUsed,
  );

  /// Create a copy of ChatStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStreamDoneEventImplCopyWith<_$ChatStreamDoneEventImpl> get copyWith =>
      __$$ChatStreamDoneEventImplCopyWithImpl<_$ChatStreamDoneEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String delta) token,
    required TResult Function(String id, String name, Map<String, dynamic> args)
    toolCall,
    required TResult Function(String id, Object? result) toolResult,
    required TResult Function(int index, String title, String url) citation,
    required TResult Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )
    done,
    required TResult Function(String message, String? code) error,
  }) {
    return done(finishReason, usage, model, fallbackUsed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String delta)? token,
    TResult? Function(String id, String name, Map<String, dynamic> args)?
    toolCall,
    TResult? Function(String id, Object? result)? toolResult,
    TResult? Function(int index, String title, String url)? citation,
    TResult? Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )?
    done,
    TResult? Function(String message, String? code)? error,
  }) {
    return done?.call(finishReason, usage, model, fallbackUsed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String delta)? token,
    TResult Function(String id, String name, Map<String, dynamic> args)?
    toolCall,
    TResult Function(String id, Object? result)? toolResult,
    TResult Function(int index, String title, String url)? citation,
    TResult Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )?
    done,
    TResult Function(String message, String? code)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(finishReason, usage, model, fallbackUsed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatStreamTokenEvent value) token,
    required TResult Function(ChatStreamToolCallEvent value) toolCall,
    required TResult Function(ChatStreamToolResultEvent value) toolResult,
    required TResult Function(ChatStreamCitationEvent value) citation,
    required TResult Function(ChatStreamDoneEvent value) done,
    required TResult Function(ChatStreamErrorEvent value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatStreamTokenEvent value)? token,
    TResult? Function(ChatStreamToolCallEvent value)? toolCall,
    TResult? Function(ChatStreamToolResultEvent value)? toolResult,
    TResult? Function(ChatStreamCitationEvent value)? citation,
    TResult? Function(ChatStreamDoneEvent value)? done,
    TResult? Function(ChatStreamErrorEvent value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatStreamTokenEvent value)? token,
    TResult Function(ChatStreamToolCallEvent value)? toolCall,
    TResult Function(ChatStreamToolResultEvent value)? toolResult,
    TResult Function(ChatStreamCitationEvent value)? citation,
    TResult Function(ChatStreamDoneEvent value)? done,
    TResult Function(ChatStreamErrorEvent value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class ChatStreamDoneEvent implements ChatStreamEvent {
  const factory ChatStreamDoneEvent({
    final String? finishReason,
    final Map<String, dynamic>? usage,
    final String? model,
    final bool? fallbackUsed,
  }) = _$ChatStreamDoneEventImpl;

  String? get finishReason;
  Map<String, dynamic>? get usage;
  String? get model;
  bool? get fallbackUsed;

  /// Create a copy of ChatStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStreamDoneEventImplCopyWith<_$ChatStreamDoneEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatStreamErrorEventImplCopyWith<$Res> {
  factory _$$ChatStreamErrorEventImplCopyWith(
    _$ChatStreamErrorEventImpl value,
    $Res Function(_$ChatStreamErrorEventImpl) then,
  ) = __$$ChatStreamErrorEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String? code});
}

/// @nodoc
class __$$ChatStreamErrorEventImplCopyWithImpl<$Res>
    extends _$ChatStreamEventCopyWithImpl<$Res, _$ChatStreamErrorEventImpl>
    implements _$$ChatStreamErrorEventImplCopyWith<$Res> {
  __$$ChatStreamErrorEventImplCopyWithImpl(
    _$ChatStreamErrorEventImpl _value,
    $Res Function(_$ChatStreamErrorEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? code = freezed}) {
    return _then(
      _$ChatStreamErrorEventImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        code: freezed == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ChatStreamErrorEventImpl implements ChatStreamErrorEvent {
  const _$ChatStreamErrorEventImpl({required this.message, this.code});

  @override
  final String message;
  @override
  final String? code;

  @override
  String toString() {
    return 'ChatStreamEvent.error(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStreamErrorEventImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of ChatStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStreamErrorEventImplCopyWith<_$ChatStreamErrorEventImpl>
  get copyWith =>
      __$$ChatStreamErrorEventImplCopyWithImpl<_$ChatStreamErrorEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String delta) token,
    required TResult Function(String id, String name, Map<String, dynamic> args)
    toolCall,
    required TResult Function(String id, Object? result) toolResult,
    required TResult Function(int index, String title, String url) citation,
    required TResult Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )
    done,
    required TResult Function(String message, String? code) error,
  }) {
    return error(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String delta)? token,
    TResult? Function(String id, String name, Map<String, dynamic> args)?
    toolCall,
    TResult? Function(String id, Object? result)? toolResult,
    TResult? Function(int index, String title, String url)? citation,
    TResult? Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )?
    done,
    TResult? Function(String message, String? code)? error,
  }) {
    return error?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String delta)? token,
    TResult Function(String id, String name, Map<String, dynamic> args)?
    toolCall,
    TResult Function(String id, Object? result)? toolResult,
    TResult Function(int index, String title, String url)? citation,
    TResult Function(
      String? finishReason,
      Map<String, dynamic>? usage,
      String? model,
      bool? fallbackUsed,
    )?
    done,
    TResult Function(String message, String? code)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatStreamTokenEvent value) token,
    required TResult Function(ChatStreamToolCallEvent value) toolCall,
    required TResult Function(ChatStreamToolResultEvent value) toolResult,
    required TResult Function(ChatStreamCitationEvent value) citation,
    required TResult Function(ChatStreamDoneEvent value) done,
    required TResult Function(ChatStreamErrorEvent value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatStreamTokenEvent value)? token,
    TResult? Function(ChatStreamToolCallEvent value)? toolCall,
    TResult? Function(ChatStreamToolResultEvent value)? toolResult,
    TResult? Function(ChatStreamCitationEvent value)? citation,
    TResult? Function(ChatStreamDoneEvent value)? done,
    TResult? Function(ChatStreamErrorEvent value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatStreamTokenEvent value)? token,
    TResult Function(ChatStreamToolCallEvent value)? toolCall,
    TResult Function(ChatStreamToolResultEvent value)? toolResult,
    TResult Function(ChatStreamCitationEvent value)? citation,
    TResult Function(ChatStreamDoneEvent value)? done,
    TResult Function(ChatStreamErrorEvent value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChatStreamErrorEvent implements ChatStreamEvent {
  const factory ChatStreamErrorEvent({
    required final String message,
    final String? code,
  }) = _$ChatStreamErrorEventImpl;

  String get message;
  String? get code;

  /// Create a copy of ChatStreamEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStreamErrorEventImplCopyWith<_$ChatStreamErrorEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}
