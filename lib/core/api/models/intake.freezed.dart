// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intake.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

IntakeMessage _$IntakeMessageFromJson(Map<String, dynamic> json) {
  return _IntakeMessage.fromJson(json);
}

/// @nodoc
mixin _$IntakeMessage {
  String get role => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this IntakeMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IntakeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IntakeMessageCopyWith<IntakeMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntakeMessageCopyWith<$Res> {
  factory $IntakeMessageCopyWith(
    IntakeMessage value,
    $Res Function(IntakeMessage) then,
  ) = _$IntakeMessageCopyWithImpl<$Res, IntakeMessage>;
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class _$IntakeMessageCopyWithImpl<$Res, $Val extends IntakeMessage>
    implements $IntakeMessageCopyWith<$Res> {
  _$IntakeMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntakeMessage
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
abstract class _$$IntakeMessageImplCopyWith<$Res>
    implements $IntakeMessageCopyWith<$Res> {
  factory _$$IntakeMessageImplCopyWith(
    _$IntakeMessageImpl value,
    $Res Function(_$IntakeMessageImpl) then,
  ) = __$$IntakeMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class __$$IntakeMessageImplCopyWithImpl<$Res>
    extends _$IntakeMessageCopyWithImpl<$Res, _$IntakeMessageImpl>
    implements _$$IntakeMessageImplCopyWith<$Res> {
  __$$IntakeMessageImplCopyWithImpl(
    _$IntakeMessageImpl _value,
    $Res Function(_$IntakeMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IntakeMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? role = null, Object? content = null}) {
    return _then(
      _$IntakeMessageImpl(
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
class _$IntakeMessageImpl implements _IntakeMessage {
  const _$IntakeMessageImpl({required this.role, required this.content});

  factory _$IntakeMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntakeMessageImplFromJson(json);

  @override
  final String role;
  @override
  final String content;

  @override
  String toString() {
    return 'IntakeMessage(role: $role, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntakeMessageImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role, content);

  /// Create a copy of IntakeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntakeMessageImplCopyWith<_$IntakeMessageImpl> get copyWith =>
      __$$IntakeMessageImplCopyWithImpl<_$IntakeMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntakeMessageImplToJson(this);
  }
}

abstract class _IntakeMessage implements IntakeMessage {
  const factory _IntakeMessage({
    required final String role,
    required final String content,
  }) = _$IntakeMessageImpl;

  factory _IntakeMessage.fromJson(Map<String, dynamic> json) =
      _$IntakeMessageImpl.fromJson;

  @override
  String get role;
  @override
  String get content;

  /// Create a copy of IntakeMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntakeMessageImplCopyWith<_$IntakeMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IntakeInterpretRequest _$IntakeInterpretRequestFromJson(
  Map<String, dynamic> json,
) {
  return _IntakeInterpretRequest.fromJson(json);
}

/// @nodoc
mixin _$IntakeInterpretRequest {
  String get description => throw _privateConstructorUsedError;
  String? get scope => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_code')
  String? get stateCode => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_facts')
  Map<String, dynamic> get currentFacts => throw _privateConstructorUsedError;
  @JsonKey(name: 'use_llm')
  bool get useLlm => throw _privateConstructorUsedError;

  /// Serializes this IntakeInterpretRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IntakeInterpretRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IntakeInterpretRequestCopyWith<IntakeInterpretRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntakeInterpretRequestCopyWith<$Res> {
  factory $IntakeInterpretRequestCopyWith(
    IntakeInterpretRequest value,
    $Res Function(IntakeInterpretRequest) then,
  ) = _$IntakeInterpretRequestCopyWithImpl<$Res, IntakeInterpretRequest>;
  @useResult
  $Res call({
    String description,
    String? scope,
    @JsonKey(name: 'state_code') String? stateCode,
    List<String> categories,
    @JsonKey(name: 'current_facts') Map<String, dynamic> currentFacts,
    @JsonKey(name: 'use_llm') bool useLlm,
  });
}

/// @nodoc
class _$IntakeInterpretRequestCopyWithImpl<
  $Res,
  $Val extends IntakeInterpretRequest
>
    implements $IntakeInterpretRequestCopyWith<$Res> {
  _$IntakeInterpretRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntakeInterpretRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? scope = freezed,
    Object? stateCode = freezed,
    Object? categories = null,
    Object? currentFacts = null,
    Object? useLlm = null,
  }) {
    return _then(
      _value.copyWith(
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            scope: freezed == scope
                ? _value.scope
                : scope // ignore: cast_nullable_to_non_nullable
                      as String?,
            stateCode: freezed == stateCode
                ? _value.stateCode
                : stateCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            categories: null == categories
                ? _value.categories
                : categories // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            currentFacts: null == currentFacts
                ? _value.currentFacts
                : currentFacts // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            useLlm: null == useLlm
                ? _value.useLlm
                : useLlm // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$IntakeInterpretRequestImplCopyWith<$Res>
    implements $IntakeInterpretRequestCopyWith<$Res> {
  factory _$$IntakeInterpretRequestImplCopyWith(
    _$IntakeInterpretRequestImpl value,
    $Res Function(_$IntakeInterpretRequestImpl) then,
  ) = __$$IntakeInterpretRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String description,
    String? scope,
    @JsonKey(name: 'state_code') String? stateCode,
    List<String> categories,
    @JsonKey(name: 'current_facts') Map<String, dynamic> currentFacts,
    @JsonKey(name: 'use_llm') bool useLlm,
  });
}

/// @nodoc
class __$$IntakeInterpretRequestImplCopyWithImpl<$Res>
    extends
        _$IntakeInterpretRequestCopyWithImpl<$Res, _$IntakeInterpretRequestImpl>
    implements _$$IntakeInterpretRequestImplCopyWith<$Res> {
  __$$IntakeInterpretRequestImplCopyWithImpl(
    _$IntakeInterpretRequestImpl _value,
    $Res Function(_$IntakeInterpretRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IntakeInterpretRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? scope = freezed,
    Object? stateCode = freezed,
    Object? categories = null,
    Object? currentFacts = null,
    Object? useLlm = null,
  }) {
    return _then(
      _$IntakeInterpretRequestImpl(
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        scope: freezed == scope
            ? _value.scope
            : scope // ignore: cast_nullable_to_non_nullable
                  as String?,
        stateCode: freezed == stateCode
            ? _value.stateCode
            : stateCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        categories: null == categories
            ? _value._categories
            : categories // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        currentFacts: null == currentFacts
            ? _value._currentFacts
            : currentFacts // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        useLlm: null == useLlm
            ? _value.useLlm
            : useLlm // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IntakeInterpretRequestImpl implements _IntakeInterpretRequest {
  const _$IntakeInterpretRequestImpl({
    this.description = '',
    this.scope,
    @JsonKey(name: 'state_code') this.stateCode,
    final List<String> categories = const <String>[],
    @JsonKey(name: 'current_facts')
    final Map<String, dynamic> currentFacts = const <String, dynamic>{},
    @JsonKey(name: 'use_llm') this.useLlm = true,
  }) : _categories = categories,
       _currentFacts = currentFacts;

  factory _$IntakeInterpretRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntakeInterpretRequestImplFromJson(json);

  @override
  @JsonKey()
  final String description;
  @override
  final String? scope;
  @override
  @JsonKey(name: 'state_code')
  final String? stateCode;
  final List<String> _categories;
  @override
  @JsonKey()
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final Map<String, dynamic> _currentFacts;
  @override
  @JsonKey(name: 'current_facts')
  Map<String, dynamic> get currentFacts {
    if (_currentFacts is EqualUnmodifiableMapView) return _currentFacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_currentFacts);
  }

  @override
  @JsonKey(name: 'use_llm')
  final bool useLlm;

  @override
  String toString() {
    return 'IntakeInterpretRequest(description: $description, scope: $scope, stateCode: $stateCode, categories: $categories, currentFacts: $currentFacts, useLlm: $useLlm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntakeInterpretRequestImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.stateCode, stateCode) ||
                other.stateCode == stateCode) &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ) &&
            const DeepCollectionEquality().equals(
              other._currentFacts,
              _currentFacts,
            ) &&
            (identical(other.useLlm, useLlm) || other.useLlm == useLlm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    description,
    scope,
    stateCode,
    const DeepCollectionEquality().hash(_categories),
    const DeepCollectionEquality().hash(_currentFacts),
    useLlm,
  );

  /// Create a copy of IntakeInterpretRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntakeInterpretRequestImplCopyWith<_$IntakeInterpretRequestImpl>
  get copyWith =>
      __$$IntakeInterpretRequestImplCopyWithImpl<_$IntakeInterpretRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$IntakeInterpretRequestImplToJson(this);
  }
}

abstract class _IntakeInterpretRequest implements IntakeInterpretRequest {
  const factory _IntakeInterpretRequest({
    final String description,
    final String? scope,
    @JsonKey(name: 'state_code') final String? stateCode,
    final List<String> categories,
    @JsonKey(name: 'current_facts') final Map<String, dynamic> currentFacts,
    @JsonKey(name: 'use_llm') final bool useLlm,
  }) = _$IntakeInterpretRequestImpl;

  factory _IntakeInterpretRequest.fromJson(Map<String, dynamic> json) =
      _$IntakeInterpretRequestImpl.fromJson;

  @override
  String get description;
  @override
  String? get scope;
  @override
  @JsonKey(name: 'state_code')
  String? get stateCode;
  @override
  List<String> get categories;
  @override
  @JsonKey(name: 'current_facts')
  Map<String, dynamic> get currentFacts;
  @override
  @JsonKey(name: 'use_llm')
  bool get useLlm;

  /// Create a copy of IntakeInterpretRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntakeInterpretRequestImplCopyWith<_$IntakeInterpretRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

IntakeProbeRequest _$IntakeProbeRequestFromJson(Map<String, dynamic> json) {
  return _IntakeProbeRequest.fromJson(json);
}

/// @nodoc
mixin _$IntakeProbeRequest {
  String get description => throw _privateConstructorUsedError;
  String? get scope => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_code')
  String? get stateCode => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_facts')
  Map<String, dynamic> get currentFacts => throw _privateConstructorUsedError;
  List<IntakeMessage> get messages => throw _privateConstructorUsedError;
  @JsonKey(name: 'pending_question_key')
  String? get pendingQuestionKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'use_llm')
  bool get useLlm => throw _privateConstructorUsedError;

  /// Serializes this IntakeProbeRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IntakeProbeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IntakeProbeRequestCopyWith<IntakeProbeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntakeProbeRequestCopyWith<$Res> {
  factory $IntakeProbeRequestCopyWith(
    IntakeProbeRequest value,
    $Res Function(IntakeProbeRequest) then,
  ) = _$IntakeProbeRequestCopyWithImpl<$Res, IntakeProbeRequest>;
  @useResult
  $Res call({
    String description,
    String? scope,
    @JsonKey(name: 'state_code') String? stateCode,
    List<String> categories,
    @JsonKey(name: 'current_facts') Map<String, dynamic> currentFacts,
    List<IntakeMessage> messages,
    @JsonKey(name: 'pending_question_key') String? pendingQuestionKey,
    @JsonKey(name: 'use_llm') bool useLlm,
  });
}

/// @nodoc
class _$IntakeProbeRequestCopyWithImpl<$Res, $Val extends IntakeProbeRequest>
    implements $IntakeProbeRequestCopyWith<$Res> {
  _$IntakeProbeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntakeProbeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? scope = freezed,
    Object? stateCode = freezed,
    Object? categories = null,
    Object? currentFacts = null,
    Object? messages = null,
    Object? pendingQuestionKey = freezed,
    Object? useLlm = null,
  }) {
    return _then(
      _value.copyWith(
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            scope: freezed == scope
                ? _value.scope
                : scope // ignore: cast_nullable_to_non_nullable
                      as String?,
            stateCode: freezed == stateCode
                ? _value.stateCode
                : stateCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            categories: null == categories
                ? _value.categories
                : categories // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            currentFacts: null == currentFacts
                ? _value.currentFacts
                : currentFacts // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            messages: null == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as List<IntakeMessage>,
            pendingQuestionKey: freezed == pendingQuestionKey
                ? _value.pendingQuestionKey
                : pendingQuestionKey // ignore: cast_nullable_to_non_nullable
                      as String?,
            useLlm: null == useLlm
                ? _value.useLlm
                : useLlm // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$IntakeProbeRequestImplCopyWith<$Res>
    implements $IntakeProbeRequestCopyWith<$Res> {
  factory _$$IntakeProbeRequestImplCopyWith(
    _$IntakeProbeRequestImpl value,
    $Res Function(_$IntakeProbeRequestImpl) then,
  ) = __$$IntakeProbeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String description,
    String? scope,
    @JsonKey(name: 'state_code') String? stateCode,
    List<String> categories,
    @JsonKey(name: 'current_facts') Map<String, dynamic> currentFacts,
    List<IntakeMessage> messages,
    @JsonKey(name: 'pending_question_key') String? pendingQuestionKey,
    @JsonKey(name: 'use_llm') bool useLlm,
  });
}

/// @nodoc
class __$$IntakeProbeRequestImplCopyWithImpl<$Res>
    extends _$IntakeProbeRequestCopyWithImpl<$Res, _$IntakeProbeRequestImpl>
    implements _$$IntakeProbeRequestImplCopyWith<$Res> {
  __$$IntakeProbeRequestImplCopyWithImpl(
    _$IntakeProbeRequestImpl _value,
    $Res Function(_$IntakeProbeRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IntakeProbeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? scope = freezed,
    Object? stateCode = freezed,
    Object? categories = null,
    Object? currentFacts = null,
    Object? messages = null,
    Object? pendingQuestionKey = freezed,
    Object? useLlm = null,
  }) {
    return _then(
      _$IntakeProbeRequestImpl(
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        scope: freezed == scope
            ? _value.scope
            : scope // ignore: cast_nullable_to_non_nullable
                  as String?,
        stateCode: freezed == stateCode
            ? _value.stateCode
            : stateCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        categories: null == categories
            ? _value._categories
            : categories // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        currentFacts: null == currentFacts
            ? _value._currentFacts
            : currentFacts // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<IntakeMessage>,
        pendingQuestionKey: freezed == pendingQuestionKey
            ? _value.pendingQuestionKey
            : pendingQuestionKey // ignore: cast_nullable_to_non_nullable
                  as String?,
        useLlm: null == useLlm
            ? _value.useLlm
            : useLlm // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IntakeProbeRequestImpl implements _IntakeProbeRequest {
  const _$IntakeProbeRequestImpl({
    this.description = '',
    this.scope,
    @JsonKey(name: 'state_code') this.stateCode,
    final List<String> categories = const <String>[],
    @JsonKey(name: 'current_facts')
    final Map<String, dynamic> currentFacts = const <String, dynamic>{},
    final List<IntakeMessage> messages = const <IntakeMessage>[],
    @JsonKey(name: 'pending_question_key') this.pendingQuestionKey,
    @JsonKey(name: 'use_llm') this.useLlm = true,
  }) : _categories = categories,
       _currentFacts = currentFacts,
       _messages = messages;

  factory _$IntakeProbeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntakeProbeRequestImplFromJson(json);

  @override
  @JsonKey()
  final String description;
  @override
  final String? scope;
  @override
  @JsonKey(name: 'state_code')
  final String? stateCode;
  final List<String> _categories;
  @override
  @JsonKey()
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final Map<String, dynamic> _currentFacts;
  @override
  @JsonKey(name: 'current_facts')
  Map<String, dynamic> get currentFacts {
    if (_currentFacts is EqualUnmodifiableMapView) return _currentFacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_currentFacts);
  }

  final List<IntakeMessage> _messages;
  @override
  @JsonKey()
  List<IntakeMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey(name: 'pending_question_key')
  final String? pendingQuestionKey;
  @override
  @JsonKey(name: 'use_llm')
  final bool useLlm;

  @override
  String toString() {
    return 'IntakeProbeRequest(description: $description, scope: $scope, stateCode: $stateCode, categories: $categories, currentFacts: $currentFacts, messages: $messages, pendingQuestionKey: $pendingQuestionKey, useLlm: $useLlm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntakeProbeRequestImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.stateCode, stateCode) ||
                other.stateCode == stateCode) &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ) &&
            const DeepCollectionEquality().equals(
              other._currentFacts,
              _currentFacts,
            ) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.pendingQuestionKey, pendingQuestionKey) ||
                other.pendingQuestionKey == pendingQuestionKey) &&
            (identical(other.useLlm, useLlm) || other.useLlm == useLlm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    description,
    scope,
    stateCode,
    const DeepCollectionEquality().hash(_categories),
    const DeepCollectionEquality().hash(_currentFacts),
    const DeepCollectionEquality().hash(_messages),
    pendingQuestionKey,
    useLlm,
  );

  /// Create a copy of IntakeProbeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntakeProbeRequestImplCopyWith<_$IntakeProbeRequestImpl> get copyWith =>
      __$$IntakeProbeRequestImplCopyWithImpl<_$IntakeProbeRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$IntakeProbeRequestImplToJson(this);
  }
}

abstract class _IntakeProbeRequest implements IntakeProbeRequest {
  const factory _IntakeProbeRequest({
    final String description,
    final String? scope,
    @JsonKey(name: 'state_code') final String? stateCode,
    final List<String> categories,
    @JsonKey(name: 'current_facts') final Map<String, dynamic> currentFacts,
    final List<IntakeMessage> messages,
    @JsonKey(name: 'pending_question_key') final String? pendingQuestionKey,
    @JsonKey(name: 'use_llm') final bool useLlm,
  }) = _$IntakeProbeRequestImpl;

  factory _IntakeProbeRequest.fromJson(Map<String, dynamic> json) =
      _$IntakeProbeRequestImpl.fromJson;

  @override
  String get description;
  @override
  String? get scope;
  @override
  @JsonKey(name: 'state_code')
  String? get stateCode;
  @override
  List<String> get categories;
  @override
  @JsonKey(name: 'current_facts')
  Map<String, dynamic> get currentFacts;
  @override
  List<IntakeMessage> get messages;
  @override
  @JsonKey(name: 'pending_question_key')
  String? get pendingQuestionKey;
  @override
  @JsonKey(name: 'use_llm')
  bool get useLlm;

  /// Create a copy of IntakeProbeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntakeProbeRequestImplCopyWith<_$IntakeProbeRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IntakeFactChip _$IntakeFactChipFromJson(Map<String, dynamic> json) {
  return _IntakeFactChip.fromJson(json);
}

/// @nodoc
mixin _$IntakeFactChip {
  String get key => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  /// Serializes this IntakeFactChip to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IntakeFactChip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IntakeFactChipCopyWith<IntakeFactChip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntakeFactChipCopyWith<$Res> {
  factory $IntakeFactChipCopyWith(
    IntakeFactChip value,
    $Res Function(IntakeFactChip) then,
  ) = _$IntakeFactChipCopyWithImpl<$Res, IntakeFactChip>;
  @useResult
  $Res call({String key, String label, String? value});
}

/// @nodoc
class _$IntakeFactChipCopyWithImpl<$Res, $Val extends IntakeFactChip>
    implements $IntakeFactChipCopyWith<$Res> {
  _$IntakeFactChipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntakeFactChip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? label = null,
    Object? value = freezed,
  }) {
    return _then(
      _value.copyWith(
            key: null == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                      as String,
            label: null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String,
            value: freezed == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$IntakeFactChipImplCopyWith<$Res>
    implements $IntakeFactChipCopyWith<$Res> {
  factory _$$IntakeFactChipImplCopyWith(
    _$IntakeFactChipImpl value,
    $Res Function(_$IntakeFactChipImpl) then,
  ) = __$$IntakeFactChipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String label, String? value});
}

/// @nodoc
class __$$IntakeFactChipImplCopyWithImpl<$Res>
    extends _$IntakeFactChipCopyWithImpl<$Res, _$IntakeFactChipImpl>
    implements _$$IntakeFactChipImplCopyWith<$Res> {
  __$$IntakeFactChipImplCopyWithImpl(
    _$IntakeFactChipImpl _value,
    $Res Function(_$IntakeFactChipImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IntakeFactChip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? label = null,
    Object? value = freezed,
  }) {
    return _then(
      _$IntakeFactChipImpl(
        key: null == key
            ? _value.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        value: freezed == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IntakeFactChipImpl implements _IntakeFactChip {
  const _$IntakeFactChipImpl({
    required this.key,
    required this.label,
    this.value,
  });

  factory _$IntakeFactChipImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntakeFactChipImplFromJson(json);

  @override
  final String key;
  @override
  final String label;
  @override
  final String? value;

  @override
  String toString() {
    return 'IntakeFactChip(key: $key, label: $label, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntakeFactChipImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, label, value);

  /// Create a copy of IntakeFactChip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntakeFactChipImplCopyWith<_$IntakeFactChipImpl> get copyWith =>
      __$$IntakeFactChipImplCopyWithImpl<_$IntakeFactChipImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$IntakeFactChipImplToJson(this);
  }
}

abstract class _IntakeFactChip implements IntakeFactChip {
  const factory _IntakeFactChip({
    required final String key,
    required final String label,
    final String? value,
  }) = _$IntakeFactChipImpl;

  factory _IntakeFactChip.fromJson(Map<String, dynamic> json) =
      _$IntakeFactChipImpl.fromJson;

  @override
  String get key;
  @override
  String get label;
  @override
  String? get value;

  /// Create a copy of IntakeFactChip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntakeFactChipImplCopyWith<_$IntakeFactChipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IntakeCategorySuggestion _$IntakeCategorySuggestionFromJson(
  Map<String, dynamic> json,
) {
  return _IntakeCategorySuggestion.fromJson(json);
}

/// @nodoc
mixin _$IntakeCategorySuggestion {
  String get key => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  /// Serializes this IntakeCategorySuggestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IntakeCategorySuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IntakeCategorySuggestionCopyWith<IntakeCategorySuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntakeCategorySuggestionCopyWith<$Res> {
  factory $IntakeCategorySuggestionCopyWith(
    IntakeCategorySuggestion value,
    $Res Function(IntakeCategorySuggestion) then,
  ) = _$IntakeCategorySuggestionCopyWithImpl<$Res, IntakeCategorySuggestion>;
  @useResult
  $Res call({String key, String label});
}

/// @nodoc
class _$IntakeCategorySuggestionCopyWithImpl<
  $Res,
  $Val extends IntakeCategorySuggestion
>
    implements $IntakeCategorySuggestionCopyWith<$Res> {
  _$IntakeCategorySuggestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntakeCategorySuggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? key = null, Object? label = null}) {
    return _then(
      _value.copyWith(
            key: null == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                      as String,
            label: null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$IntakeCategorySuggestionImplCopyWith<$Res>
    implements $IntakeCategorySuggestionCopyWith<$Res> {
  factory _$$IntakeCategorySuggestionImplCopyWith(
    _$IntakeCategorySuggestionImpl value,
    $Res Function(_$IntakeCategorySuggestionImpl) then,
  ) = __$$IntakeCategorySuggestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String label});
}

/// @nodoc
class __$$IntakeCategorySuggestionImplCopyWithImpl<$Res>
    extends
        _$IntakeCategorySuggestionCopyWithImpl<
          $Res,
          _$IntakeCategorySuggestionImpl
        >
    implements _$$IntakeCategorySuggestionImplCopyWith<$Res> {
  __$$IntakeCategorySuggestionImplCopyWithImpl(
    _$IntakeCategorySuggestionImpl _value,
    $Res Function(_$IntakeCategorySuggestionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IntakeCategorySuggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? key = null, Object? label = null}) {
    return _then(
      _$IntakeCategorySuggestionImpl(
        key: null == key
            ? _value.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IntakeCategorySuggestionImpl implements _IntakeCategorySuggestion {
  const _$IntakeCategorySuggestionImpl({
    required this.key,
    required this.label,
  });

  factory _$IntakeCategorySuggestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntakeCategorySuggestionImplFromJson(json);

  @override
  final String key;
  @override
  final String label;

  @override
  String toString() {
    return 'IntakeCategorySuggestion(key: $key, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntakeCategorySuggestionImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, label);

  /// Create a copy of IntakeCategorySuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntakeCategorySuggestionImplCopyWith<_$IntakeCategorySuggestionImpl>
  get copyWith =>
      __$$IntakeCategorySuggestionImplCopyWithImpl<
        _$IntakeCategorySuggestionImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntakeCategorySuggestionImplToJson(this);
  }
}

abstract class _IntakeCategorySuggestion implements IntakeCategorySuggestion {
  const factory _IntakeCategorySuggestion({
    required final String key,
    required final String label,
  }) = _$IntakeCategorySuggestionImpl;

  factory _IntakeCategorySuggestion.fromJson(Map<String, dynamic> json) =
      _$IntakeCategorySuggestionImpl.fromJson;

  @override
  String get key;
  @override
  String get label;

  /// Create a copy of IntakeCategorySuggestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntakeCategorySuggestionImplCopyWith<_$IntakeCategorySuggestionImpl>
  get copyWith => throw _privateConstructorUsedError;
}

IntakeProbeQuestion _$IntakeProbeQuestionFromJson(Map<String, dynamic> json) {
  return _IntakeProbeQuestion.fromJson(json);
}

/// @nodoc
mixin _$IntakeProbeQuestion {
  String get key => throw _privateConstructorUsedError;
  String get prompt => throw _privateConstructorUsedError;
  String? get hint => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_type')
  String? get questionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'input_type')
  String? get inputType => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get options => throw _privateConstructorUsedError;

  /// Serializes this IntakeProbeQuestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IntakeProbeQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IntakeProbeQuestionCopyWith<IntakeProbeQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntakeProbeQuestionCopyWith<$Res> {
  factory $IntakeProbeQuestionCopyWith(
    IntakeProbeQuestion value,
    $Res Function(IntakeProbeQuestion) then,
  ) = _$IntakeProbeQuestionCopyWithImpl<$Res, IntakeProbeQuestion>;
  @useResult
  $Res call({
    String key,
    String prompt,
    String? hint,
    @JsonKey(name: 'question_type') String? questionType,
    @JsonKey(name: 'input_type') String? inputType,
    List<Map<String, dynamic>> options,
  });
}

/// @nodoc
class _$IntakeProbeQuestionCopyWithImpl<$Res, $Val extends IntakeProbeQuestion>
    implements $IntakeProbeQuestionCopyWith<$Res> {
  _$IntakeProbeQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntakeProbeQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? prompt = null,
    Object? hint = freezed,
    Object? questionType = freezed,
    Object? inputType = freezed,
    Object? options = null,
  }) {
    return _then(
      _value.copyWith(
            key: null == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                      as String,
            prompt: null == prompt
                ? _value.prompt
                : prompt // ignore: cast_nullable_to_non_nullable
                      as String,
            hint: freezed == hint
                ? _value.hint
                : hint // ignore: cast_nullable_to_non_nullable
                      as String?,
            questionType: freezed == questionType
                ? _value.questionType
                : questionType // ignore: cast_nullable_to_non_nullable
                      as String?,
            inputType: freezed == inputType
                ? _value.inputType
                : inputType // ignore: cast_nullable_to_non_nullable
                      as String?,
            options: null == options
                ? _value.options
                : options // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$IntakeProbeQuestionImplCopyWith<$Res>
    implements $IntakeProbeQuestionCopyWith<$Res> {
  factory _$$IntakeProbeQuestionImplCopyWith(
    _$IntakeProbeQuestionImpl value,
    $Res Function(_$IntakeProbeQuestionImpl) then,
  ) = __$$IntakeProbeQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String key,
    String prompt,
    String? hint,
    @JsonKey(name: 'question_type') String? questionType,
    @JsonKey(name: 'input_type') String? inputType,
    List<Map<String, dynamic>> options,
  });
}

/// @nodoc
class __$$IntakeProbeQuestionImplCopyWithImpl<$Res>
    extends _$IntakeProbeQuestionCopyWithImpl<$Res, _$IntakeProbeQuestionImpl>
    implements _$$IntakeProbeQuestionImplCopyWith<$Res> {
  __$$IntakeProbeQuestionImplCopyWithImpl(
    _$IntakeProbeQuestionImpl _value,
    $Res Function(_$IntakeProbeQuestionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IntakeProbeQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? prompt = null,
    Object? hint = freezed,
    Object? questionType = freezed,
    Object? inputType = freezed,
    Object? options = null,
  }) {
    return _then(
      _$IntakeProbeQuestionImpl(
        key: null == key
            ? _value.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        prompt: null == prompt
            ? _value.prompt
            : prompt // ignore: cast_nullable_to_non_nullable
                  as String,
        hint: freezed == hint
            ? _value.hint
            : hint // ignore: cast_nullable_to_non_nullable
                  as String?,
        questionType: freezed == questionType
            ? _value.questionType
            : questionType // ignore: cast_nullable_to_non_nullable
                  as String?,
        inputType: freezed == inputType
            ? _value.inputType
            : inputType // ignore: cast_nullable_to_non_nullable
                  as String?,
        options: null == options
            ? _value._options
            : options // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IntakeProbeQuestionImpl implements _IntakeProbeQuestion {
  const _$IntakeProbeQuestionImpl({
    required this.key,
    required this.prompt,
    this.hint,
    @JsonKey(name: 'question_type') this.questionType,
    @JsonKey(name: 'input_type') this.inputType,
    final List<Map<String, dynamic>> options = const <Map<String, dynamic>>[],
  }) : _options = options;

  factory _$IntakeProbeQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntakeProbeQuestionImplFromJson(json);

  @override
  final String key;
  @override
  final String prompt;
  @override
  final String? hint;
  @override
  @JsonKey(name: 'question_type')
  final String? questionType;
  @override
  @JsonKey(name: 'input_type')
  final String? inputType;
  final List<Map<String, dynamic>> _options;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'IntakeProbeQuestion(key: $key, prompt: $prompt, hint: $hint, questionType: $questionType, inputType: $inputType, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntakeProbeQuestionImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.hint, hint) || other.hint == hint) &&
            (identical(other.questionType, questionType) ||
                other.questionType == questionType) &&
            (identical(other.inputType, inputType) ||
                other.inputType == inputType) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    key,
    prompt,
    hint,
    questionType,
    inputType,
    const DeepCollectionEquality().hash(_options),
  );

  /// Create a copy of IntakeProbeQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntakeProbeQuestionImplCopyWith<_$IntakeProbeQuestionImpl> get copyWith =>
      __$$IntakeProbeQuestionImplCopyWithImpl<_$IntakeProbeQuestionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$IntakeProbeQuestionImplToJson(this);
  }
}

abstract class _IntakeProbeQuestion implements IntakeProbeQuestion {
  const factory _IntakeProbeQuestion({
    required final String key,
    required final String prompt,
    final String? hint,
    @JsonKey(name: 'question_type') final String? questionType,
    @JsonKey(name: 'input_type') final String? inputType,
    final List<Map<String, dynamic>> options,
  }) = _$IntakeProbeQuestionImpl;

  factory _IntakeProbeQuestion.fromJson(Map<String, dynamic> json) =
      _$IntakeProbeQuestionImpl.fromJson;

  @override
  String get key;
  @override
  String get prompt;
  @override
  String? get hint;
  @override
  @JsonKey(name: 'question_type')
  String? get questionType;
  @override
  @JsonKey(name: 'input_type')
  String? get inputType;
  @override
  List<Map<String, dynamic>> get options;

  /// Create a copy of IntakeProbeQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntakeProbeQuestionImplCopyWith<_$IntakeProbeQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IntakeNavigationAction _$IntakeNavigationActionFromJson(
  Map<String, dynamic> json,
) {
  return _IntakeNavigationAction.fromJson(json);
}

/// @nodoc
mixin _$IntakeNavigationAction {
  String get key => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this IntakeNavigationAction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IntakeNavigationAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IntakeNavigationActionCopyWith<IntakeNavigationAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntakeNavigationActionCopyWith<$Res> {
  factory $IntakeNavigationActionCopyWith(
    IntakeNavigationAction value,
    $Res Function(IntakeNavigationAction) then,
  ) = _$IntakeNavigationActionCopyWithImpl<$Res, IntakeNavigationAction>;
  @useResult
  $Res call({String key, String label, String? description, String? url});
}

/// @nodoc
class _$IntakeNavigationActionCopyWithImpl<
  $Res,
  $Val extends IntakeNavigationAction
>
    implements $IntakeNavigationActionCopyWith<$Res> {
  _$IntakeNavigationActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntakeNavigationAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? label = null,
    Object? description = freezed,
    Object? url = freezed,
  }) {
    return _then(
      _value.copyWith(
            key: null == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                      as String,
            label: null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            url: freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$IntakeNavigationActionImplCopyWith<$Res>
    implements $IntakeNavigationActionCopyWith<$Res> {
  factory _$$IntakeNavigationActionImplCopyWith(
    _$IntakeNavigationActionImpl value,
    $Res Function(_$IntakeNavigationActionImpl) then,
  ) = __$$IntakeNavigationActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String label, String? description, String? url});
}

/// @nodoc
class __$$IntakeNavigationActionImplCopyWithImpl<$Res>
    extends
        _$IntakeNavigationActionCopyWithImpl<$Res, _$IntakeNavigationActionImpl>
    implements _$$IntakeNavigationActionImplCopyWith<$Res> {
  __$$IntakeNavigationActionImplCopyWithImpl(
    _$IntakeNavigationActionImpl _value,
    $Res Function(_$IntakeNavigationActionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IntakeNavigationAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? label = null,
    Object? description = freezed,
    Object? url = freezed,
  }) {
    return _then(
      _$IntakeNavigationActionImpl(
        key: null == key
            ? _value.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        url: freezed == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IntakeNavigationActionImpl implements _IntakeNavigationAction {
  const _$IntakeNavigationActionImpl({
    required this.key,
    required this.label,
    this.description,
    this.url,
  });

  factory _$IntakeNavigationActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntakeNavigationActionImplFromJson(json);

  @override
  final String key;
  @override
  final String label;
  @override
  final String? description;
  @override
  final String? url;

  @override
  String toString() {
    return 'IntakeNavigationAction(key: $key, label: $label, description: $description, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntakeNavigationActionImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, label, description, url);

  /// Create a copy of IntakeNavigationAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntakeNavigationActionImplCopyWith<_$IntakeNavigationActionImpl>
  get copyWith =>
      __$$IntakeNavigationActionImplCopyWithImpl<_$IntakeNavigationActionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$IntakeNavigationActionImplToJson(this);
  }
}

abstract class _IntakeNavigationAction implements IntakeNavigationAction {
  const factory _IntakeNavigationAction({
    required final String key,
    required final String label,
    final String? description,
    final String? url,
  }) = _$IntakeNavigationActionImpl;

  factory _IntakeNavigationAction.fromJson(Map<String, dynamic> json) =
      _$IntakeNavigationActionImpl.fromJson;

  @override
  String get key;
  @override
  String get label;
  @override
  String? get description;
  @override
  String? get url;

  /// Create a copy of IntakeNavigationAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntakeNavigationActionImplCopyWith<_$IntakeNavigationActionImpl>
  get copyWith => throw _privateConstructorUsedError;
}

IntakeResponse _$IntakeResponseFromJson(Map<String, dynamic> json) {
  return _IntakeResponse.fromJson(json);
}

/// @nodoc
mixin _$IntakeResponse {
  String get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_reply')
  String? get chatReply => throw _privateConstructorUsedError;
  @JsonKey(name: 'suggested_scope')
  String? get suggestedScope => throw _privateConstructorUsedError;
  @JsonKey(name: 'applied_state_code')
  String? get appliedStateCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'suggested_categories')
  List<IntakeCategorySuggestion> get suggestedCategories =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'structured_facts')
  List<IntakeFactChip> get structuredFacts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'current_facts')
  Map<String, dynamic> get currentFacts => throw _privateConstructorUsedError;
  @JsonKey(name: 'prefill_answers')
  Map<String, dynamic> get prefillAnswers => throw _privateConstructorUsedError;
  @JsonKey(name: 'follow_up_questions')
  List<IntakeProbeQuestion> get followUpQuestions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'next_probe')
  IntakeProbeQuestion? get nextProbe => throw _privateConstructorUsedError;
  @JsonKey(name: 'navigation_actions')
  List<IntakeNavigationAction> get navigationActions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'interpretation_method')
  String? get interpretationMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'llm_used')
  bool get llmUsed => throw _privateConstructorUsedError;
  @JsonKey(name: 'assistant_method')
  String? get assistantMethod => throw _privateConstructorUsedError;

  /// Serializes this IntakeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IntakeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IntakeResponseCopyWith<IntakeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntakeResponseCopyWith<$Res> {
  factory $IntakeResponseCopyWith(
    IntakeResponse value,
    $Res Function(IntakeResponse) then,
  ) = _$IntakeResponseCopyWithImpl<$Res, IntakeResponse>;
  @useResult
  $Res call({
    String summary,
    @JsonKey(name: 'chat_reply') String? chatReply,
    @JsonKey(name: 'suggested_scope') String? suggestedScope,
    @JsonKey(name: 'applied_state_code') String? appliedStateCode,
    @JsonKey(name: 'suggested_categories')
    List<IntakeCategorySuggestion> suggestedCategories,
    @JsonKey(name: 'structured_facts') List<IntakeFactChip> structuredFacts,
    @JsonKey(name: 'current_facts') Map<String, dynamic> currentFacts,
    @JsonKey(name: 'prefill_answers') Map<String, dynamic> prefillAnswers,
    @JsonKey(name: 'follow_up_questions')
    List<IntakeProbeQuestion> followUpQuestions,
    @JsonKey(name: 'next_probe') IntakeProbeQuestion? nextProbe,
    @JsonKey(name: 'navigation_actions')
    List<IntakeNavigationAction> navigationActions,
    @JsonKey(name: 'interpretation_method') String? interpretationMethod,
    @JsonKey(name: 'llm_used') bool llmUsed,
    @JsonKey(name: 'assistant_method') String? assistantMethod,
  });

  $IntakeProbeQuestionCopyWith<$Res>? get nextProbe;
}

/// @nodoc
class _$IntakeResponseCopyWithImpl<$Res, $Val extends IntakeResponse>
    implements $IntakeResponseCopyWith<$Res> {
  _$IntakeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntakeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = null,
    Object? chatReply = freezed,
    Object? suggestedScope = freezed,
    Object? appliedStateCode = freezed,
    Object? suggestedCategories = null,
    Object? structuredFacts = null,
    Object? currentFacts = null,
    Object? prefillAnswers = null,
    Object? followUpQuestions = null,
    Object? nextProbe = freezed,
    Object? navigationActions = null,
    Object? interpretationMethod = freezed,
    Object? llmUsed = null,
    Object? assistantMethod = freezed,
  }) {
    return _then(
      _value.copyWith(
            summary: null == summary
                ? _value.summary
                : summary // ignore: cast_nullable_to_non_nullable
                      as String,
            chatReply: freezed == chatReply
                ? _value.chatReply
                : chatReply // ignore: cast_nullable_to_non_nullable
                      as String?,
            suggestedScope: freezed == suggestedScope
                ? _value.suggestedScope
                : suggestedScope // ignore: cast_nullable_to_non_nullable
                      as String?,
            appliedStateCode: freezed == appliedStateCode
                ? _value.appliedStateCode
                : appliedStateCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            suggestedCategories: null == suggestedCategories
                ? _value.suggestedCategories
                : suggestedCategories // ignore: cast_nullable_to_non_nullable
                      as List<IntakeCategorySuggestion>,
            structuredFacts: null == structuredFacts
                ? _value.structuredFacts
                : structuredFacts // ignore: cast_nullable_to_non_nullable
                      as List<IntakeFactChip>,
            currentFacts: null == currentFacts
                ? _value.currentFacts
                : currentFacts // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            prefillAnswers: null == prefillAnswers
                ? _value.prefillAnswers
                : prefillAnswers // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            followUpQuestions: null == followUpQuestions
                ? _value.followUpQuestions
                : followUpQuestions // ignore: cast_nullable_to_non_nullable
                      as List<IntakeProbeQuestion>,
            nextProbe: freezed == nextProbe
                ? _value.nextProbe
                : nextProbe // ignore: cast_nullable_to_non_nullable
                      as IntakeProbeQuestion?,
            navigationActions: null == navigationActions
                ? _value.navigationActions
                : navigationActions // ignore: cast_nullable_to_non_nullable
                      as List<IntakeNavigationAction>,
            interpretationMethod: freezed == interpretationMethod
                ? _value.interpretationMethod
                : interpretationMethod // ignore: cast_nullable_to_non_nullable
                      as String?,
            llmUsed: null == llmUsed
                ? _value.llmUsed
                : llmUsed // ignore: cast_nullable_to_non_nullable
                      as bool,
            assistantMethod: freezed == assistantMethod
                ? _value.assistantMethod
                : assistantMethod // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of IntakeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntakeProbeQuestionCopyWith<$Res>? get nextProbe {
    if (_value.nextProbe == null) {
      return null;
    }

    return $IntakeProbeQuestionCopyWith<$Res>(_value.nextProbe!, (value) {
      return _then(_value.copyWith(nextProbe: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IntakeResponseImplCopyWith<$Res>
    implements $IntakeResponseCopyWith<$Res> {
  factory _$$IntakeResponseImplCopyWith(
    _$IntakeResponseImpl value,
    $Res Function(_$IntakeResponseImpl) then,
  ) = __$$IntakeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String summary,
    @JsonKey(name: 'chat_reply') String? chatReply,
    @JsonKey(name: 'suggested_scope') String? suggestedScope,
    @JsonKey(name: 'applied_state_code') String? appliedStateCode,
    @JsonKey(name: 'suggested_categories')
    List<IntakeCategorySuggestion> suggestedCategories,
    @JsonKey(name: 'structured_facts') List<IntakeFactChip> structuredFacts,
    @JsonKey(name: 'current_facts') Map<String, dynamic> currentFacts,
    @JsonKey(name: 'prefill_answers') Map<String, dynamic> prefillAnswers,
    @JsonKey(name: 'follow_up_questions')
    List<IntakeProbeQuestion> followUpQuestions,
    @JsonKey(name: 'next_probe') IntakeProbeQuestion? nextProbe,
    @JsonKey(name: 'navigation_actions')
    List<IntakeNavigationAction> navigationActions,
    @JsonKey(name: 'interpretation_method') String? interpretationMethod,
    @JsonKey(name: 'llm_used') bool llmUsed,
    @JsonKey(name: 'assistant_method') String? assistantMethod,
  });

  @override
  $IntakeProbeQuestionCopyWith<$Res>? get nextProbe;
}

/// @nodoc
class __$$IntakeResponseImplCopyWithImpl<$Res>
    extends _$IntakeResponseCopyWithImpl<$Res, _$IntakeResponseImpl>
    implements _$$IntakeResponseImplCopyWith<$Res> {
  __$$IntakeResponseImplCopyWithImpl(
    _$IntakeResponseImpl _value,
    $Res Function(_$IntakeResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IntakeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = null,
    Object? chatReply = freezed,
    Object? suggestedScope = freezed,
    Object? appliedStateCode = freezed,
    Object? suggestedCategories = null,
    Object? structuredFacts = null,
    Object? currentFacts = null,
    Object? prefillAnswers = null,
    Object? followUpQuestions = null,
    Object? nextProbe = freezed,
    Object? navigationActions = null,
    Object? interpretationMethod = freezed,
    Object? llmUsed = null,
    Object? assistantMethod = freezed,
  }) {
    return _then(
      _$IntakeResponseImpl(
        summary: null == summary
            ? _value.summary
            : summary // ignore: cast_nullable_to_non_nullable
                  as String,
        chatReply: freezed == chatReply
            ? _value.chatReply
            : chatReply // ignore: cast_nullable_to_non_nullable
                  as String?,
        suggestedScope: freezed == suggestedScope
            ? _value.suggestedScope
            : suggestedScope // ignore: cast_nullable_to_non_nullable
                  as String?,
        appliedStateCode: freezed == appliedStateCode
            ? _value.appliedStateCode
            : appliedStateCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        suggestedCategories: null == suggestedCategories
            ? _value._suggestedCategories
            : suggestedCategories // ignore: cast_nullable_to_non_nullable
                  as List<IntakeCategorySuggestion>,
        structuredFacts: null == structuredFacts
            ? _value._structuredFacts
            : structuredFacts // ignore: cast_nullable_to_non_nullable
                  as List<IntakeFactChip>,
        currentFacts: null == currentFacts
            ? _value._currentFacts
            : currentFacts // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        prefillAnswers: null == prefillAnswers
            ? _value._prefillAnswers
            : prefillAnswers // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        followUpQuestions: null == followUpQuestions
            ? _value._followUpQuestions
            : followUpQuestions // ignore: cast_nullable_to_non_nullable
                  as List<IntakeProbeQuestion>,
        nextProbe: freezed == nextProbe
            ? _value.nextProbe
            : nextProbe // ignore: cast_nullable_to_non_nullable
                  as IntakeProbeQuestion?,
        navigationActions: null == navigationActions
            ? _value._navigationActions
            : navigationActions // ignore: cast_nullable_to_non_nullable
                  as List<IntakeNavigationAction>,
        interpretationMethod: freezed == interpretationMethod
            ? _value.interpretationMethod
            : interpretationMethod // ignore: cast_nullable_to_non_nullable
                  as String?,
        llmUsed: null == llmUsed
            ? _value.llmUsed
            : llmUsed // ignore: cast_nullable_to_non_nullable
                  as bool,
        assistantMethod: freezed == assistantMethod
            ? _value.assistantMethod
            : assistantMethod // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IntakeResponseImpl implements _IntakeResponse {
  const _$IntakeResponseImpl({
    this.summary = '',
    @JsonKey(name: 'chat_reply') this.chatReply,
    @JsonKey(name: 'suggested_scope') this.suggestedScope,
    @JsonKey(name: 'applied_state_code') this.appliedStateCode,
    @JsonKey(name: 'suggested_categories')
    final List<IntakeCategorySuggestion> suggestedCategories =
        const <IntakeCategorySuggestion>[],
    @JsonKey(name: 'structured_facts')
    final List<IntakeFactChip> structuredFacts = const <IntakeFactChip>[],
    @JsonKey(name: 'current_facts')
    final Map<String, dynamic> currentFacts = const <String, dynamic>{},
    @JsonKey(name: 'prefill_answers')
    final Map<String, dynamic> prefillAnswers = const <String, dynamic>{},
    @JsonKey(name: 'follow_up_questions')
    final List<IntakeProbeQuestion> followUpQuestions =
        const <IntakeProbeQuestion>[],
    @JsonKey(name: 'next_probe') this.nextProbe,
    @JsonKey(name: 'navigation_actions')
    final List<IntakeNavigationAction> navigationActions =
        const <IntakeNavigationAction>[],
    @JsonKey(name: 'interpretation_method') this.interpretationMethod,
    @JsonKey(name: 'llm_used') this.llmUsed = false,
    @JsonKey(name: 'assistant_method') this.assistantMethod,
  }) : _suggestedCategories = suggestedCategories,
       _structuredFacts = structuredFacts,
       _currentFacts = currentFacts,
       _prefillAnswers = prefillAnswers,
       _followUpQuestions = followUpQuestions,
       _navigationActions = navigationActions;

  factory _$IntakeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntakeResponseImplFromJson(json);

  @override
  @JsonKey()
  final String summary;
  @override
  @JsonKey(name: 'chat_reply')
  final String? chatReply;
  @override
  @JsonKey(name: 'suggested_scope')
  final String? suggestedScope;
  @override
  @JsonKey(name: 'applied_state_code')
  final String? appliedStateCode;
  final List<IntakeCategorySuggestion> _suggestedCategories;
  @override
  @JsonKey(name: 'suggested_categories')
  List<IntakeCategorySuggestion> get suggestedCategories {
    if (_suggestedCategories is EqualUnmodifiableListView)
      return _suggestedCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestedCategories);
  }

  final List<IntakeFactChip> _structuredFacts;
  @override
  @JsonKey(name: 'structured_facts')
  List<IntakeFactChip> get structuredFacts {
    if (_structuredFacts is EqualUnmodifiableListView) return _structuredFacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_structuredFacts);
  }

  final Map<String, dynamic> _currentFacts;
  @override
  @JsonKey(name: 'current_facts')
  Map<String, dynamic> get currentFacts {
    if (_currentFacts is EqualUnmodifiableMapView) return _currentFacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_currentFacts);
  }

  final Map<String, dynamic> _prefillAnswers;
  @override
  @JsonKey(name: 'prefill_answers')
  Map<String, dynamic> get prefillAnswers {
    if (_prefillAnswers is EqualUnmodifiableMapView) return _prefillAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_prefillAnswers);
  }

  final List<IntakeProbeQuestion> _followUpQuestions;
  @override
  @JsonKey(name: 'follow_up_questions')
  List<IntakeProbeQuestion> get followUpQuestions {
    if (_followUpQuestions is EqualUnmodifiableListView)
      return _followUpQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followUpQuestions);
  }

  @override
  @JsonKey(name: 'next_probe')
  final IntakeProbeQuestion? nextProbe;
  final List<IntakeNavigationAction> _navigationActions;
  @override
  @JsonKey(name: 'navigation_actions')
  List<IntakeNavigationAction> get navigationActions {
    if (_navigationActions is EqualUnmodifiableListView)
      return _navigationActions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_navigationActions);
  }

  @override
  @JsonKey(name: 'interpretation_method')
  final String? interpretationMethod;
  @override
  @JsonKey(name: 'llm_used')
  final bool llmUsed;
  @override
  @JsonKey(name: 'assistant_method')
  final String? assistantMethod;

  @override
  String toString() {
    return 'IntakeResponse(summary: $summary, chatReply: $chatReply, suggestedScope: $suggestedScope, appliedStateCode: $appliedStateCode, suggestedCategories: $suggestedCategories, structuredFacts: $structuredFacts, currentFacts: $currentFacts, prefillAnswers: $prefillAnswers, followUpQuestions: $followUpQuestions, nextProbe: $nextProbe, navigationActions: $navigationActions, interpretationMethod: $interpretationMethod, llmUsed: $llmUsed, assistantMethod: $assistantMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntakeResponseImpl &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.chatReply, chatReply) ||
                other.chatReply == chatReply) &&
            (identical(other.suggestedScope, suggestedScope) ||
                other.suggestedScope == suggestedScope) &&
            (identical(other.appliedStateCode, appliedStateCode) ||
                other.appliedStateCode == appliedStateCode) &&
            const DeepCollectionEquality().equals(
              other._suggestedCategories,
              _suggestedCategories,
            ) &&
            const DeepCollectionEquality().equals(
              other._structuredFacts,
              _structuredFacts,
            ) &&
            const DeepCollectionEquality().equals(
              other._currentFacts,
              _currentFacts,
            ) &&
            const DeepCollectionEquality().equals(
              other._prefillAnswers,
              _prefillAnswers,
            ) &&
            const DeepCollectionEquality().equals(
              other._followUpQuestions,
              _followUpQuestions,
            ) &&
            (identical(other.nextProbe, nextProbe) ||
                other.nextProbe == nextProbe) &&
            const DeepCollectionEquality().equals(
              other._navigationActions,
              _navigationActions,
            ) &&
            (identical(other.interpretationMethod, interpretationMethod) ||
                other.interpretationMethod == interpretationMethod) &&
            (identical(other.llmUsed, llmUsed) || other.llmUsed == llmUsed) &&
            (identical(other.assistantMethod, assistantMethod) ||
                other.assistantMethod == assistantMethod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    summary,
    chatReply,
    suggestedScope,
    appliedStateCode,
    const DeepCollectionEquality().hash(_suggestedCategories),
    const DeepCollectionEquality().hash(_structuredFacts),
    const DeepCollectionEquality().hash(_currentFacts),
    const DeepCollectionEquality().hash(_prefillAnswers),
    const DeepCollectionEquality().hash(_followUpQuestions),
    nextProbe,
    const DeepCollectionEquality().hash(_navigationActions),
    interpretationMethod,
    llmUsed,
    assistantMethod,
  );

  /// Create a copy of IntakeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntakeResponseImplCopyWith<_$IntakeResponseImpl> get copyWith =>
      __$$IntakeResponseImplCopyWithImpl<_$IntakeResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$IntakeResponseImplToJson(this);
  }
}

abstract class _IntakeResponse implements IntakeResponse {
  const factory _IntakeResponse({
    final String summary,
    @JsonKey(name: 'chat_reply') final String? chatReply,
    @JsonKey(name: 'suggested_scope') final String? suggestedScope,
    @JsonKey(name: 'applied_state_code') final String? appliedStateCode,
    @JsonKey(name: 'suggested_categories')
    final List<IntakeCategorySuggestion> suggestedCategories,
    @JsonKey(name: 'structured_facts')
    final List<IntakeFactChip> structuredFacts,
    @JsonKey(name: 'current_facts') final Map<String, dynamic> currentFacts,
    @JsonKey(name: 'prefill_answers') final Map<String, dynamic> prefillAnswers,
    @JsonKey(name: 'follow_up_questions')
    final List<IntakeProbeQuestion> followUpQuestions,
    @JsonKey(name: 'next_probe') final IntakeProbeQuestion? nextProbe,
    @JsonKey(name: 'navigation_actions')
    final List<IntakeNavigationAction> navigationActions,
    @JsonKey(name: 'interpretation_method') final String? interpretationMethod,
    @JsonKey(name: 'llm_used') final bool llmUsed,
    @JsonKey(name: 'assistant_method') final String? assistantMethod,
  }) = _$IntakeResponseImpl;

  factory _IntakeResponse.fromJson(Map<String, dynamic> json) =
      _$IntakeResponseImpl.fromJson;

  @override
  String get summary;
  @override
  @JsonKey(name: 'chat_reply')
  String? get chatReply;
  @override
  @JsonKey(name: 'suggested_scope')
  String? get suggestedScope;
  @override
  @JsonKey(name: 'applied_state_code')
  String? get appliedStateCode;
  @override
  @JsonKey(name: 'suggested_categories')
  List<IntakeCategorySuggestion> get suggestedCategories;
  @override
  @JsonKey(name: 'structured_facts')
  List<IntakeFactChip> get structuredFacts;
  @override
  @JsonKey(name: 'current_facts')
  Map<String, dynamic> get currentFacts;
  @override
  @JsonKey(name: 'prefill_answers')
  Map<String, dynamic> get prefillAnswers;
  @override
  @JsonKey(name: 'follow_up_questions')
  List<IntakeProbeQuestion> get followUpQuestions;
  @override
  @JsonKey(name: 'next_probe')
  IntakeProbeQuestion? get nextProbe;
  @override
  @JsonKey(name: 'navigation_actions')
  List<IntakeNavigationAction> get navigationActions;
  @override
  @JsonKey(name: 'interpretation_method')
  String? get interpretationMethod;
  @override
  @JsonKey(name: 'llm_used')
  bool get llmUsed;
  @override
  @JsonKey(name: 'assistant_method')
  String? get assistantMethod;

  /// Create a copy of IntakeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntakeResponseImplCopyWith<_$IntakeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
