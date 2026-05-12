// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SessionCreateRequest _$SessionCreateRequestFromJson(Map<String, dynamic> json) {
  return _SessionCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$SessionCreateRequest {
  String get scope => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_code')
  String? get stateCode => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  @JsonKey(name: 'depth_mode')
  String? get depthMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'breadth_value')
  double? get breadthValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'depth_value')
  double? get depthValue => throw _privateConstructorUsedError;

  /// Serializes this SessionCreateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionCreateRequestCopyWith<SessionCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCreateRequestCopyWith<$Res> {
  factory $SessionCreateRequestCopyWith(
    SessionCreateRequest value,
    $Res Function(SessionCreateRequest) then,
  ) = _$SessionCreateRequestCopyWithImpl<$Res, SessionCreateRequest>;
  @useResult
  $Res call({
    String scope,
    @JsonKey(name: 'state_code') String? stateCode,
    List<String> categories,
    @JsonKey(name: 'depth_mode') String? depthMode,
    @JsonKey(name: 'breadth_value') double? breadthValue,
    @JsonKey(name: 'depth_value') double? depthValue,
  });
}

/// @nodoc
class _$SessionCreateRequestCopyWithImpl<
  $Res,
  $Val extends SessionCreateRequest
>
    implements $SessionCreateRequestCopyWith<$Res> {
  _$SessionCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scope = null,
    Object? stateCode = freezed,
    Object? categories = null,
    Object? depthMode = freezed,
    Object? breadthValue = freezed,
    Object? depthValue = freezed,
  }) {
    return _then(
      _value.copyWith(
            scope: null == scope
                ? _value.scope
                : scope // ignore: cast_nullable_to_non_nullable
                      as String,
            stateCode: freezed == stateCode
                ? _value.stateCode
                : stateCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            categories: null == categories
                ? _value.categories
                : categories // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            depthMode: freezed == depthMode
                ? _value.depthMode
                : depthMode // ignore: cast_nullable_to_non_nullable
                      as String?,
            breadthValue: freezed == breadthValue
                ? _value.breadthValue
                : breadthValue // ignore: cast_nullable_to_non_nullable
                      as double?,
            depthValue: freezed == depthValue
                ? _value.depthValue
                : depthValue // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SessionCreateRequestImplCopyWith<$Res>
    implements $SessionCreateRequestCopyWith<$Res> {
  factory _$$SessionCreateRequestImplCopyWith(
    _$SessionCreateRequestImpl value,
    $Res Function(_$SessionCreateRequestImpl) then,
  ) = __$$SessionCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String scope,
    @JsonKey(name: 'state_code') String? stateCode,
    List<String> categories,
    @JsonKey(name: 'depth_mode') String? depthMode,
    @JsonKey(name: 'breadth_value') double? breadthValue,
    @JsonKey(name: 'depth_value') double? depthValue,
  });
}

/// @nodoc
class __$$SessionCreateRequestImplCopyWithImpl<$Res>
    extends _$SessionCreateRequestCopyWithImpl<$Res, _$SessionCreateRequestImpl>
    implements _$$SessionCreateRequestImplCopyWith<$Res> {
  __$$SessionCreateRequestImplCopyWithImpl(
    _$SessionCreateRequestImpl _value,
    $Res Function(_$SessionCreateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scope = null,
    Object? stateCode = freezed,
    Object? categories = null,
    Object? depthMode = freezed,
    Object? breadthValue = freezed,
    Object? depthValue = freezed,
  }) {
    return _then(
      _$SessionCreateRequestImpl(
        scope: null == scope
            ? _value.scope
            : scope // ignore: cast_nullable_to_non_nullable
                  as String,
        stateCode: freezed == stateCode
            ? _value.stateCode
            : stateCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        categories: null == categories
            ? _value._categories
            : categories // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        depthMode: freezed == depthMode
            ? _value.depthMode
            : depthMode // ignore: cast_nullable_to_non_nullable
                  as String?,
        breadthValue: freezed == breadthValue
            ? _value.breadthValue
            : breadthValue // ignore: cast_nullable_to_non_nullable
                  as double?,
        depthValue: freezed == depthValue
            ? _value.depthValue
            : depthValue // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionCreateRequestImpl implements _SessionCreateRequest {
  const _$SessionCreateRequestImpl({
    this.scope = 'both',
    @JsonKey(name: 'state_code') this.stateCode,
    final List<String> categories = const <String>[],
    @JsonKey(name: 'depth_mode') this.depthMode,
    @JsonKey(name: 'breadth_value') this.breadthValue,
    @JsonKey(name: 'depth_value') this.depthValue,
  }) : _categories = categories;

  factory _$SessionCreateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionCreateRequestImplFromJson(json);

  @override
  @JsonKey()
  final String scope;
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

  @override
  @JsonKey(name: 'depth_mode')
  final String? depthMode;
  @override
  @JsonKey(name: 'breadth_value')
  final double? breadthValue;
  @override
  @JsonKey(name: 'depth_value')
  final double? depthValue;

  @override
  String toString() {
    return 'SessionCreateRequest(scope: $scope, stateCode: $stateCode, categories: $categories, depthMode: $depthMode, breadthValue: $breadthValue, depthValue: $depthValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionCreateRequestImpl &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.stateCode, stateCode) ||
                other.stateCode == stateCode) &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ) &&
            (identical(other.depthMode, depthMode) ||
                other.depthMode == depthMode) &&
            (identical(other.breadthValue, breadthValue) ||
                other.breadthValue == breadthValue) &&
            (identical(other.depthValue, depthValue) ||
                other.depthValue == depthValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    scope,
    stateCode,
    const DeepCollectionEquality().hash(_categories),
    depthMode,
    breadthValue,
    depthValue,
  );

  /// Create a copy of SessionCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionCreateRequestImplCopyWith<_$SessionCreateRequestImpl>
  get copyWith =>
      __$$SessionCreateRequestImplCopyWithImpl<_$SessionCreateRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionCreateRequestImplToJson(this);
  }
}

abstract class _SessionCreateRequest implements SessionCreateRequest {
  const factory _SessionCreateRequest({
    final String scope,
    @JsonKey(name: 'state_code') final String? stateCode,
    final List<String> categories,
    @JsonKey(name: 'depth_mode') final String? depthMode,
    @JsonKey(name: 'breadth_value') final double? breadthValue,
    @JsonKey(name: 'depth_value') final double? depthValue,
  }) = _$SessionCreateRequestImpl;

  factory _SessionCreateRequest.fromJson(Map<String, dynamic> json) =
      _$SessionCreateRequestImpl.fromJson;

  @override
  String get scope;
  @override
  @JsonKey(name: 'state_code')
  String? get stateCode;
  @override
  List<String> get categories;
  @override
  @JsonKey(name: 'depth_mode')
  String? get depthMode;
  @override
  @JsonKey(name: 'breadth_value')
  double? get breadthValue;
  @override
  @JsonKey(name: 'depth_value')
  double? get depthValue;

  /// Create a copy of SessionCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionCreateRequestImplCopyWith<_$SessionCreateRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

QuestionOption _$QuestionOptionFromJson(Map<String, dynamic> json) {
  return _QuestionOption.fromJson(json);
}

/// @nodoc
mixin _$QuestionOption {
  String get label => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;

  /// Serializes this QuestionOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionOptionCopyWith<QuestionOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionOptionCopyWith<$Res> {
  factory $QuestionOptionCopyWith(
    QuestionOption value,
    $Res Function(QuestionOption) then,
  ) = _$QuestionOptionCopyWithImpl<$Res, QuestionOption>;
  @useResult
  $Res call({String label, dynamic value});
}

/// @nodoc
class _$QuestionOptionCopyWithImpl<$Res, $Val extends QuestionOption>
    implements $QuestionOptionCopyWith<$Res> {
  _$QuestionOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? label = null, Object? value = freezed}) {
    return _then(
      _value.copyWith(
            label: null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String,
            value: freezed == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuestionOptionImplCopyWith<$Res>
    implements $QuestionOptionCopyWith<$Res> {
  factory _$$QuestionOptionImplCopyWith(
    _$QuestionOptionImpl value,
    $Res Function(_$QuestionOptionImpl) then,
  ) = __$$QuestionOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, dynamic value});
}

/// @nodoc
class __$$QuestionOptionImplCopyWithImpl<$Res>
    extends _$QuestionOptionCopyWithImpl<$Res, _$QuestionOptionImpl>
    implements _$$QuestionOptionImplCopyWith<$Res> {
  __$$QuestionOptionImplCopyWithImpl(
    _$QuestionOptionImpl _value,
    $Res Function(_$QuestionOptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuestionOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? label = null, Object? value = freezed}) {
    return _then(
      _$QuestionOptionImpl(
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        value: freezed == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionOptionImpl implements _QuestionOption {
  const _$QuestionOptionImpl({required this.label, required this.value});

  factory _$QuestionOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionOptionImplFromJson(json);

  @override
  final String label;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'QuestionOption(label: $label, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionOptionImpl &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    label,
    const DeepCollectionEquality().hash(value),
  );

  /// Create a copy of QuestionOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionOptionImplCopyWith<_$QuestionOptionImpl> get copyWith =>
      __$$QuestionOptionImplCopyWithImpl<_$QuestionOptionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionOptionImplToJson(this);
  }
}

abstract class _QuestionOption implements QuestionOption {
  const factory _QuestionOption({
    required final String label,
    required final dynamic value,
  }) = _$QuestionOptionImpl;

  factory _QuestionOption.fromJson(Map<String, dynamic> json) =
      _$QuestionOptionImpl.fromJson;

  @override
  String get label;
  @override
  dynamic get value;

  /// Create a copy of QuestionOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionOptionImplCopyWith<_$QuestionOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionOut _$QuestionOutFromJson(Map<String, dynamic> json) {
  return _QuestionOut.fromJson(json);
}

/// @nodoc
mixin _$QuestionOut {
  String get key => throw _privateConstructorUsedError;
  String get prompt => throw _privateConstructorUsedError;
  String? get hint => throw _privateConstructorUsedError;
  @JsonKey(name: 'input_type')
  String get inputType => throw _privateConstructorUsedError;
  @JsonKey(name: 'sensitivity_level')
  String get sensitivityLevel => throw _privateConstructorUsedError;
  List<QuestionOption>? get options => throw _privateConstructorUsedError;

  /// Serializes this QuestionOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionOutCopyWith<QuestionOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionOutCopyWith<$Res> {
  factory $QuestionOutCopyWith(
    QuestionOut value,
    $Res Function(QuestionOut) then,
  ) = _$QuestionOutCopyWithImpl<$Res, QuestionOut>;
  @useResult
  $Res call({
    String key,
    String prompt,
    String? hint,
    @JsonKey(name: 'input_type') String inputType,
    @JsonKey(name: 'sensitivity_level') String sensitivityLevel,
    List<QuestionOption>? options,
  });
}

/// @nodoc
class _$QuestionOutCopyWithImpl<$Res, $Val extends QuestionOut>
    implements $QuestionOutCopyWith<$Res> {
  _$QuestionOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? prompt = null,
    Object? hint = freezed,
    Object? inputType = null,
    Object? sensitivityLevel = null,
    Object? options = freezed,
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
            inputType: null == inputType
                ? _value.inputType
                : inputType // ignore: cast_nullable_to_non_nullable
                      as String,
            sensitivityLevel: null == sensitivityLevel
                ? _value.sensitivityLevel
                : sensitivityLevel // ignore: cast_nullable_to_non_nullable
                      as String,
            options: freezed == options
                ? _value.options
                : options // ignore: cast_nullable_to_non_nullable
                      as List<QuestionOption>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuestionOutImplCopyWith<$Res>
    implements $QuestionOutCopyWith<$Res> {
  factory _$$QuestionOutImplCopyWith(
    _$QuestionOutImpl value,
    $Res Function(_$QuestionOutImpl) then,
  ) = __$$QuestionOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String key,
    String prompt,
    String? hint,
    @JsonKey(name: 'input_type') String inputType,
    @JsonKey(name: 'sensitivity_level') String sensitivityLevel,
    List<QuestionOption>? options,
  });
}

/// @nodoc
class __$$QuestionOutImplCopyWithImpl<$Res>
    extends _$QuestionOutCopyWithImpl<$Res, _$QuestionOutImpl>
    implements _$$QuestionOutImplCopyWith<$Res> {
  __$$QuestionOutImplCopyWithImpl(
    _$QuestionOutImpl _value,
    $Res Function(_$QuestionOutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuestionOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? prompt = null,
    Object? hint = freezed,
    Object? inputType = null,
    Object? sensitivityLevel = null,
    Object? options = freezed,
  }) {
    return _then(
      _$QuestionOutImpl(
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
        inputType: null == inputType
            ? _value.inputType
            : inputType // ignore: cast_nullable_to_non_nullable
                  as String,
        sensitivityLevel: null == sensitivityLevel
            ? _value.sensitivityLevel
            : sensitivityLevel // ignore: cast_nullable_to_non_nullable
                  as String,
        options: freezed == options
            ? _value._options
            : options // ignore: cast_nullable_to_non_nullable
                  as List<QuestionOption>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionOutImpl implements _QuestionOut {
  const _$QuestionOutImpl({
    required this.key,
    required this.prompt,
    this.hint,
    @JsonKey(name: 'input_type') required this.inputType,
    @JsonKey(name: 'sensitivity_level') required this.sensitivityLevel,
    final List<QuestionOption>? options,
  }) : _options = options;

  factory _$QuestionOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionOutImplFromJson(json);

  @override
  final String key;
  @override
  final String prompt;
  @override
  final String? hint;
  @override
  @JsonKey(name: 'input_type')
  final String inputType;
  @override
  @JsonKey(name: 'sensitivity_level')
  final String sensitivityLevel;
  final List<QuestionOption>? _options;
  @override
  List<QuestionOption>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuestionOut(key: $key, prompt: $prompt, hint: $hint, inputType: $inputType, sensitivityLevel: $sensitivityLevel, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionOutImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.hint, hint) || other.hint == hint) &&
            (identical(other.inputType, inputType) ||
                other.inputType == inputType) &&
            (identical(other.sensitivityLevel, sensitivityLevel) ||
                other.sensitivityLevel == sensitivityLevel) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    key,
    prompt,
    hint,
    inputType,
    sensitivityLevel,
    const DeepCollectionEquality().hash(_options),
  );

  /// Create a copy of QuestionOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionOutImplCopyWith<_$QuestionOutImpl> get copyWith =>
      __$$QuestionOutImplCopyWithImpl<_$QuestionOutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionOutImplToJson(this);
  }
}

abstract class _QuestionOut implements QuestionOut {
  const factory _QuestionOut({
    required final String key,
    required final String prompt,
    final String? hint,
    @JsonKey(name: 'input_type') required final String inputType,
    @JsonKey(name: 'sensitivity_level') required final String sensitivityLevel,
    final List<QuestionOption>? options,
  }) = _$QuestionOutImpl;

  factory _QuestionOut.fromJson(Map<String, dynamic> json) =
      _$QuestionOutImpl.fromJson;

  @override
  String get key;
  @override
  String get prompt;
  @override
  String? get hint;
  @override
  @JsonKey(name: 'input_type')
  String get inputType;
  @override
  @JsonKey(name: 'sensitivity_level')
  String get sensitivityLevel;
  @override
  List<QuestionOption>? get options;

  /// Create a copy of QuestionOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionOutImplCopyWith<_$QuestionOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionEnvelope _$SessionEnvelopeFromJson(Map<String, dynamic> json) {
  return _SessionEnvelope.fromJson(json);
}

/// @nodoc
mixin _$SessionEnvelope {
  @JsonKey(name: 'session_id')
  String get sessionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_question')
  QuestionOut? get nextQuestion => throw _privateConstructorUsedError;
  @JsonKey(name: 'provisional_result_count')
  int get provisionalResultCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'program_count')
  int get programCount => throw _privateConstructorUsedError;

  /// Serializes this SessionEnvelope to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionEnvelope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionEnvelopeCopyWith<SessionEnvelope> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionEnvelopeCopyWith<$Res> {
  factory $SessionEnvelopeCopyWith(
    SessionEnvelope value,
    $Res Function(SessionEnvelope) then,
  ) = _$SessionEnvelopeCopyWithImpl<$Res, SessionEnvelope>;
  @useResult
  $Res call({
    @JsonKey(name: 'session_id') String sessionId,
    @JsonKey(name: 'next_question') QuestionOut? nextQuestion,
    @JsonKey(name: 'provisional_result_count') int provisionalResultCount,
    @JsonKey(name: 'program_count') int programCount,
  });

  $QuestionOutCopyWith<$Res>? get nextQuestion;
}

/// @nodoc
class _$SessionEnvelopeCopyWithImpl<$Res, $Val extends SessionEnvelope>
    implements $SessionEnvelopeCopyWith<$Res> {
  _$SessionEnvelopeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionEnvelope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? nextQuestion = freezed,
    Object? provisionalResultCount = null,
    Object? programCount = null,
  }) {
    return _then(
      _value.copyWith(
            sessionId: null == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as String,
            nextQuestion: freezed == nextQuestion
                ? _value.nextQuestion
                : nextQuestion // ignore: cast_nullable_to_non_nullable
                      as QuestionOut?,
            provisionalResultCount: null == provisionalResultCount
                ? _value.provisionalResultCount
                : provisionalResultCount // ignore: cast_nullable_to_non_nullable
                      as int,
            programCount: null == programCount
                ? _value.programCount
                : programCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of SessionEnvelope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionOutCopyWith<$Res>? get nextQuestion {
    if (_value.nextQuestion == null) {
      return null;
    }

    return $QuestionOutCopyWith<$Res>(_value.nextQuestion!, (value) {
      return _then(_value.copyWith(nextQuestion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionEnvelopeImplCopyWith<$Res>
    implements $SessionEnvelopeCopyWith<$Res> {
  factory _$$SessionEnvelopeImplCopyWith(
    _$SessionEnvelopeImpl value,
    $Res Function(_$SessionEnvelopeImpl) then,
  ) = __$$SessionEnvelopeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'session_id') String sessionId,
    @JsonKey(name: 'next_question') QuestionOut? nextQuestion,
    @JsonKey(name: 'provisional_result_count') int provisionalResultCount,
    @JsonKey(name: 'program_count') int programCount,
  });

  @override
  $QuestionOutCopyWith<$Res>? get nextQuestion;
}

/// @nodoc
class __$$SessionEnvelopeImplCopyWithImpl<$Res>
    extends _$SessionEnvelopeCopyWithImpl<$Res, _$SessionEnvelopeImpl>
    implements _$$SessionEnvelopeImplCopyWith<$Res> {
  __$$SessionEnvelopeImplCopyWithImpl(
    _$SessionEnvelopeImpl _value,
    $Res Function(_$SessionEnvelopeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionEnvelope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? nextQuestion = freezed,
    Object? provisionalResultCount = null,
    Object? programCount = null,
  }) {
    return _then(
      _$SessionEnvelopeImpl(
        sessionId: null == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String,
        nextQuestion: freezed == nextQuestion
            ? _value.nextQuestion
            : nextQuestion // ignore: cast_nullable_to_non_nullable
                  as QuestionOut?,
        provisionalResultCount: null == provisionalResultCount
            ? _value.provisionalResultCount
            : provisionalResultCount // ignore: cast_nullable_to_non_nullable
                  as int,
        programCount: null == programCount
            ? _value.programCount
            : programCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionEnvelopeImpl implements _SessionEnvelope {
  const _$SessionEnvelopeImpl({
    @JsonKey(name: 'session_id') required this.sessionId,
    @JsonKey(name: 'next_question') this.nextQuestion,
    @JsonKey(name: 'provisional_result_count') this.provisionalResultCount = 0,
    @JsonKey(name: 'program_count') this.programCount = 0,
  });

  factory _$SessionEnvelopeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionEnvelopeImplFromJson(json);

  @override
  @JsonKey(name: 'session_id')
  final String sessionId;
  @override
  @JsonKey(name: 'next_question')
  final QuestionOut? nextQuestion;
  @override
  @JsonKey(name: 'provisional_result_count')
  final int provisionalResultCount;
  @override
  @JsonKey(name: 'program_count')
  final int programCount;

  @override
  String toString() {
    return 'SessionEnvelope(sessionId: $sessionId, nextQuestion: $nextQuestion, provisionalResultCount: $provisionalResultCount, programCount: $programCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionEnvelopeImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.nextQuestion, nextQuestion) ||
                other.nextQuestion == nextQuestion) &&
            (identical(other.provisionalResultCount, provisionalResultCount) ||
                other.provisionalResultCount == provisionalResultCount) &&
            (identical(other.programCount, programCount) ||
                other.programCount == programCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    sessionId,
    nextQuestion,
    provisionalResultCount,
    programCount,
  );

  /// Create a copy of SessionEnvelope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionEnvelopeImplCopyWith<_$SessionEnvelopeImpl> get copyWith =>
      __$$SessionEnvelopeImplCopyWithImpl<_$SessionEnvelopeImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionEnvelopeImplToJson(this);
  }
}

abstract class _SessionEnvelope implements SessionEnvelope {
  const factory _SessionEnvelope({
    @JsonKey(name: 'session_id') required final String sessionId,
    @JsonKey(name: 'next_question') final QuestionOut? nextQuestion,
    @JsonKey(name: 'provisional_result_count') final int provisionalResultCount,
    @JsonKey(name: 'program_count') final int programCount,
  }) = _$SessionEnvelopeImpl;

  factory _SessionEnvelope.fromJson(Map<String, dynamic> json) =
      _$SessionEnvelopeImpl.fromJson;

  @override
  @JsonKey(name: 'session_id')
  String get sessionId;
  @override
  @JsonKey(name: 'next_question')
  QuestionOut? get nextQuestion;
  @override
  @JsonKey(name: 'provisional_result_count')
  int get provisionalResultCount;
  @override
  @JsonKey(name: 'program_count')
  int get programCount;

  /// Create a copy of SessionEnvelope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionEnvelopeImplCopyWith<_$SessionEnvelopeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionAnswersRequest _$SessionAnswersRequestFromJson(
  Map<String, dynamic> json,
) {
  return _SessionAnswersRequest.fromJson(json);
}

/// @nodoc
mixin _$SessionAnswersRequest {
  Map<String, dynamic> get answers => throw _privateConstructorUsedError;
  @JsonKey(name: 'replace_answers')
  bool get replaceAnswers => throw _privateConstructorUsedError;

  /// Serializes this SessionAnswersRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionAnswersRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionAnswersRequestCopyWith<SessionAnswersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionAnswersRequestCopyWith<$Res> {
  factory $SessionAnswersRequestCopyWith(
    SessionAnswersRequest value,
    $Res Function(SessionAnswersRequest) then,
  ) = _$SessionAnswersRequestCopyWithImpl<$Res, SessionAnswersRequest>;
  @useResult
  $Res call({
    Map<String, dynamic> answers,
    @JsonKey(name: 'replace_answers') bool replaceAnswers,
  });
}

/// @nodoc
class _$SessionAnswersRequestCopyWithImpl<
  $Res,
  $Val extends SessionAnswersRequest
>
    implements $SessionAnswersRequestCopyWith<$Res> {
  _$SessionAnswersRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionAnswersRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? answers = null, Object? replaceAnswers = null}) {
    return _then(
      _value.copyWith(
            answers: null == answers
                ? _value.answers
                : answers // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            replaceAnswers: null == replaceAnswers
                ? _value.replaceAnswers
                : replaceAnswers // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SessionAnswersRequestImplCopyWith<$Res>
    implements $SessionAnswersRequestCopyWith<$Res> {
  factory _$$SessionAnswersRequestImplCopyWith(
    _$SessionAnswersRequestImpl value,
    $Res Function(_$SessionAnswersRequestImpl) then,
  ) = __$$SessionAnswersRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Map<String, dynamic> answers,
    @JsonKey(name: 'replace_answers') bool replaceAnswers,
  });
}

/// @nodoc
class __$$SessionAnswersRequestImplCopyWithImpl<$Res>
    extends
        _$SessionAnswersRequestCopyWithImpl<$Res, _$SessionAnswersRequestImpl>
    implements _$$SessionAnswersRequestImplCopyWith<$Res> {
  __$$SessionAnswersRequestImplCopyWithImpl(
    _$SessionAnswersRequestImpl _value,
    $Res Function(_$SessionAnswersRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionAnswersRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? answers = null, Object? replaceAnswers = null}) {
    return _then(
      _$SessionAnswersRequestImpl(
        answers: null == answers
            ? _value._answers
            : answers // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        replaceAnswers: null == replaceAnswers
            ? _value.replaceAnswers
            : replaceAnswers // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionAnswersRequestImpl implements _SessionAnswersRequest {
  const _$SessionAnswersRequestImpl({
    final Map<String, dynamic> answers = const <String, dynamic>{},
    @JsonKey(name: 'replace_answers') this.replaceAnswers = false,
  }) : _answers = answers;

  factory _$SessionAnswersRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionAnswersRequestImplFromJson(json);

  final Map<String, dynamic> _answers;
  @override
  @JsonKey()
  Map<String, dynamic> get answers {
    if (_answers is EqualUnmodifiableMapView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_answers);
  }

  @override
  @JsonKey(name: 'replace_answers')
  final bool replaceAnswers;

  @override
  String toString() {
    return 'SessionAnswersRequest(answers: $answers, replaceAnswers: $replaceAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionAnswersRequestImpl &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.replaceAnswers, replaceAnswers) ||
                other.replaceAnswers == replaceAnswers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_answers),
    replaceAnswers,
  );

  /// Create a copy of SessionAnswersRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionAnswersRequestImplCopyWith<_$SessionAnswersRequestImpl>
  get copyWith =>
      __$$SessionAnswersRequestImplCopyWithImpl<_$SessionAnswersRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionAnswersRequestImplToJson(this);
  }
}

abstract class _SessionAnswersRequest implements SessionAnswersRequest {
  const factory _SessionAnswersRequest({
    final Map<String, dynamic> answers,
    @JsonKey(name: 'replace_answers') final bool replaceAnswers,
  }) = _$SessionAnswersRequestImpl;

  factory _SessionAnswersRequest.fromJson(Map<String, dynamic> json) =
      _$SessionAnswersRequestImpl.fromJson;

  @override
  Map<String, dynamic> get answers;
  @override
  @JsonKey(name: 'replace_answers')
  bool get replaceAnswers;

  /// Create a copy of SessionAnswersRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionAnswersRequestImplCopyWith<_$SessionAnswersRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProgramResult _$ProgramResultFromJson(Map<String, dynamic> json) {
  return _ProgramResult.fromJson(json);
}

/// @nodoc
mixin _$ProgramResult {
  @JsonKey(name: 'program_slug')
  String get programSlug => throw _privateConstructorUsedError;
  @JsonKey(name: 'program_name')
  String get programName => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get family => throw _privateConstructorUsedError;
  @JsonKey(name: 'eligibility_status')
  String get eligibilityStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'decision_certainty')
  int get decisionCertainty => throw _privateConstructorUsedError;
  @JsonKey(name: 'certainty_breakdown')
  Map<String, dynamic> get certaintyBreakdown =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_amount')
  Map<String, dynamic> get estimatedAmount =>
      throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  Map<String, dynamic> get jurisdiction => throw _privateConstructorUsedError;
  String? get agency => throw _privateConstructorUsedError;
  @JsonKey(name: 'apply_url')
  String? get applyUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'matched_reasons')
  List<String> get matchedReasons => throw _privateConstructorUsedError;
  @JsonKey(name: 'missing_facts')
  List<String> get missingFacts => throw _privateConstructorUsedError;
  @JsonKey(name: 'failed_reasons')
  List<String> get failedReasons => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get documents =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'data_gathered_from')
  List<Map<String, dynamic>> get dataGatheredFrom =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'how_to_get_benefit')
  List<Map<String, dynamic>> get howToGetBenefit =>
      throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get sources => throw _privateConstructorUsedError;

  /// Serializes this ProgramResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProgramResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgramResultCopyWith<ProgramResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramResultCopyWith<$Res> {
  factory $ProgramResultCopyWith(
    ProgramResult value,
    $Res Function(ProgramResult) then,
  ) = _$ProgramResultCopyWithImpl<$Res, ProgramResult>;
  @useResult
  $Res call({
    @JsonKey(name: 'program_slug') String programSlug,
    @JsonKey(name: 'program_name') String programName,
    String? kind,
    String? category,
    String? family,
    @JsonKey(name: 'eligibility_status') String eligibilityStatus,
    @JsonKey(name: 'decision_certainty') int decisionCertainty,
    @JsonKey(name: 'certainty_breakdown')
    Map<String, dynamic> certaintyBreakdown,
    @JsonKey(name: 'estimated_amount') Map<String, dynamic> estimatedAmount,
    String? summary,
    Map<String, dynamic> jurisdiction,
    String? agency,
    @JsonKey(name: 'apply_url') String? applyUrl,
    @JsonKey(name: 'matched_reasons') List<String> matchedReasons,
    @JsonKey(name: 'missing_facts') List<String> missingFacts,
    @JsonKey(name: 'failed_reasons') List<String> failedReasons,
    List<Map<String, dynamic>> documents,
    @JsonKey(name: 'data_gathered_from')
    List<Map<String, dynamic>> dataGatheredFrom,
    @JsonKey(name: 'how_to_get_benefit')
    List<Map<String, dynamic>> howToGetBenefit,
    List<Map<String, dynamic>> sources,
  });
}

/// @nodoc
class _$ProgramResultCopyWithImpl<$Res, $Val extends ProgramResult>
    implements $ProgramResultCopyWith<$Res> {
  _$ProgramResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgramResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programSlug = null,
    Object? programName = null,
    Object? kind = freezed,
    Object? category = freezed,
    Object? family = freezed,
    Object? eligibilityStatus = null,
    Object? decisionCertainty = null,
    Object? certaintyBreakdown = null,
    Object? estimatedAmount = null,
    Object? summary = freezed,
    Object? jurisdiction = null,
    Object? agency = freezed,
    Object? applyUrl = freezed,
    Object? matchedReasons = null,
    Object? missingFacts = null,
    Object? failedReasons = null,
    Object? documents = null,
    Object? dataGatheredFrom = null,
    Object? howToGetBenefit = null,
    Object? sources = null,
  }) {
    return _then(
      _value.copyWith(
            programSlug: null == programSlug
                ? _value.programSlug
                : programSlug // ignore: cast_nullable_to_non_nullable
                      as String,
            programName: null == programName
                ? _value.programName
                : programName // ignore: cast_nullable_to_non_nullable
                      as String,
            kind: freezed == kind
                ? _value.kind
                : kind // ignore: cast_nullable_to_non_nullable
                      as String?,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String?,
            family: freezed == family
                ? _value.family
                : family // ignore: cast_nullable_to_non_nullable
                      as String?,
            eligibilityStatus: null == eligibilityStatus
                ? _value.eligibilityStatus
                : eligibilityStatus // ignore: cast_nullable_to_non_nullable
                      as String,
            decisionCertainty: null == decisionCertainty
                ? _value.decisionCertainty
                : decisionCertainty // ignore: cast_nullable_to_non_nullable
                      as int,
            certaintyBreakdown: null == certaintyBreakdown
                ? _value.certaintyBreakdown
                : certaintyBreakdown // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            estimatedAmount: null == estimatedAmount
                ? _value.estimatedAmount
                : estimatedAmount // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            summary: freezed == summary
                ? _value.summary
                : summary // ignore: cast_nullable_to_non_nullable
                      as String?,
            jurisdiction: null == jurisdiction
                ? _value.jurisdiction
                : jurisdiction // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            agency: freezed == agency
                ? _value.agency
                : agency // ignore: cast_nullable_to_non_nullable
                      as String?,
            applyUrl: freezed == applyUrl
                ? _value.applyUrl
                : applyUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            matchedReasons: null == matchedReasons
                ? _value.matchedReasons
                : matchedReasons // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            missingFacts: null == missingFacts
                ? _value.missingFacts
                : missingFacts // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            failedReasons: null == failedReasons
                ? _value.failedReasons
                : failedReasons // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            documents: null == documents
                ? _value.documents
                : documents // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
            dataGatheredFrom: null == dataGatheredFrom
                ? _value.dataGatheredFrom
                : dataGatheredFrom // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
            howToGetBenefit: null == howToGetBenefit
                ? _value.howToGetBenefit
                : howToGetBenefit // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
            sources: null == sources
                ? _value.sources
                : sources // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProgramResultImplCopyWith<$Res>
    implements $ProgramResultCopyWith<$Res> {
  factory _$$ProgramResultImplCopyWith(
    _$ProgramResultImpl value,
    $Res Function(_$ProgramResultImpl) then,
  ) = __$$ProgramResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'program_slug') String programSlug,
    @JsonKey(name: 'program_name') String programName,
    String? kind,
    String? category,
    String? family,
    @JsonKey(name: 'eligibility_status') String eligibilityStatus,
    @JsonKey(name: 'decision_certainty') int decisionCertainty,
    @JsonKey(name: 'certainty_breakdown')
    Map<String, dynamic> certaintyBreakdown,
    @JsonKey(name: 'estimated_amount') Map<String, dynamic> estimatedAmount,
    String? summary,
    Map<String, dynamic> jurisdiction,
    String? agency,
    @JsonKey(name: 'apply_url') String? applyUrl,
    @JsonKey(name: 'matched_reasons') List<String> matchedReasons,
    @JsonKey(name: 'missing_facts') List<String> missingFacts,
    @JsonKey(name: 'failed_reasons') List<String> failedReasons,
    List<Map<String, dynamic>> documents,
    @JsonKey(name: 'data_gathered_from')
    List<Map<String, dynamic>> dataGatheredFrom,
    @JsonKey(name: 'how_to_get_benefit')
    List<Map<String, dynamic>> howToGetBenefit,
    List<Map<String, dynamic>> sources,
  });
}

/// @nodoc
class __$$ProgramResultImplCopyWithImpl<$Res>
    extends _$ProgramResultCopyWithImpl<$Res, _$ProgramResultImpl>
    implements _$$ProgramResultImplCopyWith<$Res> {
  __$$ProgramResultImplCopyWithImpl(
    _$ProgramResultImpl _value,
    $Res Function(_$ProgramResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProgramResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programSlug = null,
    Object? programName = null,
    Object? kind = freezed,
    Object? category = freezed,
    Object? family = freezed,
    Object? eligibilityStatus = null,
    Object? decisionCertainty = null,
    Object? certaintyBreakdown = null,
    Object? estimatedAmount = null,
    Object? summary = freezed,
    Object? jurisdiction = null,
    Object? agency = freezed,
    Object? applyUrl = freezed,
    Object? matchedReasons = null,
    Object? missingFacts = null,
    Object? failedReasons = null,
    Object? documents = null,
    Object? dataGatheredFrom = null,
    Object? howToGetBenefit = null,
    Object? sources = null,
  }) {
    return _then(
      _$ProgramResultImpl(
        programSlug: null == programSlug
            ? _value.programSlug
            : programSlug // ignore: cast_nullable_to_non_nullable
                  as String,
        programName: null == programName
            ? _value.programName
            : programName // ignore: cast_nullable_to_non_nullable
                  as String,
        kind: freezed == kind
            ? _value.kind
            : kind // ignore: cast_nullable_to_non_nullable
                  as String?,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String?,
        family: freezed == family
            ? _value.family
            : family // ignore: cast_nullable_to_non_nullable
                  as String?,
        eligibilityStatus: null == eligibilityStatus
            ? _value.eligibilityStatus
            : eligibilityStatus // ignore: cast_nullable_to_non_nullable
                  as String,
        decisionCertainty: null == decisionCertainty
            ? _value.decisionCertainty
            : decisionCertainty // ignore: cast_nullable_to_non_nullable
                  as int,
        certaintyBreakdown: null == certaintyBreakdown
            ? _value._certaintyBreakdown
            : certaintyBreakdown // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        estimatedAmount: null == estimatedAmount
            ? _value._estimatedAmount
            : estimatedAmount // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        summary: freezed == summary
            ? _value.summary
            : summary // ignore: cast_nullable_to_non_nullable
                  as String?,
        jurisdiction: null == jurisdiction
            ? _value._jurisdiction
            : jurisdiction // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        agency: freezed == agency
            ? _value.agency
            : agency // ignore: cast_nullable_to_non_nullable
                  as String?,
        applyUrl: freezed == applyUrl
            ? _value.applyUrl
            : applyUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        matchedReasons: null == matchedReasons
            ? _value._matchedReasons
            : matchedReasons // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        missingFacts: null == missingFacts
            ? _value._missingFacts
            : missingFacts // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        failedReasons: null == failedReasons
            ? _value._failedReasons
            : failedReasons // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        documents: null == documents
            ? _value._documents
            : documents // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
        dataGatheredFrom: null == dataGatheredFrom
            ? _value._dataGatheredFrom
            : dataGatheredFrom // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
        howToGetBenefit: null == howToGetBenefit
            ? _value._howToGetBenefit
            : howToGetBenefit // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
        sources: null == sources
            ? _value._sources
            : sources // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramResultImpl implements _ProgramResult {
  const _$ProgramResultImpl({
    @JsonKey(name: 'program_slug') required this.programSlug,
    @JsonKey(name: 'program_name') required this.programName,
    this.kind,
    this.category,
    this.family,
    @JsonKey(name: 'eligibility_status') required this.eligibilityStatus,
    @JsonKey(name: 'decision_certainty') this.decisionCertainty = 0,
    @JsonKey(name: 'certainty_breakdown')
    final Map<String, dynamic> certaintyBreakdown = const <String, dynamic>{},
    @JsonKey(name: 'estimated_amount')
    final Map<String, dynamic> estimatedAmount = const <String, dynamic>{},
    this.summary,
    final Map<String, dynamic> jurisdiction = const <String, dynamic>{},
    this.agency,
    @JsonKey(name: 'apply_url') this.applyUrl,
    @JsonKey(name: 'matched_reasons')
    final List<String> matchedReasons = const <String>[],
    @JsonKey(name: 'missing_facts')
    final List<String> missingFacts = const <String>[],
    @JsonKey(name: 'failed_reasons')
    final List<String> failedReasons = const <String>[],
    final List<Map<String, dynamic>> documents = const <Map<String, dynamic>>[],
    @JsonKey(name: 'data_gathered_from')
    final List<Map<String, dynamic>> dataGatheredFrom =
        const <Map<String, dynamic>>[],
    @JsonKey(name: 'how_to_get_benefit')
    final List<Map<String, dynamic>> howToGetBenefit =
        const <Map<String, dynamic>>[],
    final List<Map<String, dynamic>> sources = const <Map<String, dynamic>>[],
  }) : _certaintyBreakdown = certaintyBreakdown,
       _estimatedAmount = estimatedAmount,
       _jurisdiction = jurisdiction,
       _matchedReasons = matchedReasons,
       _missingFacts = missingFacts,
       _failedReasons = failedReasons,
       _documents = documents,
       _dataGatheredFrom = dataGatheredFrom,
       _howToGetBenefit = howToGetBenefit,
       _sources = sources;

  factory _$ProgramResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramResultImplFromJson(json);

  @override
  @JsonKey(name: 'program_slug')
  final String programSlug;
  @override
  @JsonKey(name: 'program_name')
  final String programName;
  @override
  final String? kind;
  @override
  final String? category;
  @override
  final String? family;
  @override
  @JsonKey(name: 'eligibility_status')
  final String eligibilityStatus;
  @override
  @JsonKey(name: 'decision_certainty')
  final int decisionCertainty;
  final Map<String, dynamic> _certaintyBreakdown;
  @override
  @JsonKey(name: 'certainty_breakdown')
  Map<String, dynamic> get certaintyBreakdown {
    if (_certaintyBreakdown is EqualUnmodifiableMapView)
      return _certaintyBreakdown;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_certaintyBreakdown);
  }

  final Map<String, dynamic> _estimatedAmount;
  @override
  @JsonKey(name: 'estimated_amount')
  Map<String, dynamic> get estimatedAmount {
    if (_estimatedAmount is EqualUnmodifiableMapView) return _estimatedAmount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_estimatedAmount);
  }

  @override
  final String? summary;
  final Map<String, dynamic> _jurisdiction;
  @override
  @JsonKey()
  Map<String, dynamic> get jurisdiction {
    if (_jurisdiction is EqualUnmodifiableMapView) return _jurisdiction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_jurisdiction);
  }

  @override
  final String? agency;
  @override
  @JsonKey(name: 'apply_url')
  final String? applyUrl;
  final List<String> _matchedReasons;
  @override
  @JsonKey(name: 'matched_reasons')
  List<String> get matchedReasons {
    if (_matchedReasons is EqualUnmodifiableListView) return _matchedReasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matchedReasons);
  }

  final List<String> _missingFacts;
  @override
  @JsonKey(name: 'missing_facts')
  List<String> get missingFacts {
    if (_missingFacts is EqualUnmodifiableListView) return _missingFacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_missingFacts);
  }

  final List<String> _failedReasons;
  @override
  @JsonKey(name: 'failed_reasons')
  List<String> get failedReasons {
    if (_failedReasons is EqualUnmodifiableListView) return _failedReasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_failedReasons);
  }

  final List<Map<String, dynamic>> _documents;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  final List<Map<String, dynamic>> _dataGatheredFrom;
  @override
  @JsonKey(name: 'data_gathered_from')
  List<Map<String, dynamic>> get dataGatheredFrom {
    if (_dataGatheredFrom is EqualUnmodifiableListView)
      return _dataGatheredFrom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataGatheredFrom);
  }

  final List<Map<String, dynamic>> _howToGetBenefit;
  @override
  @JsonKey(name: 'how_to_get_benefit')
  List<Map<String, dynamic>> get howToGetBenefit {
    if (_howToGetBenefit is EqualUnmodifiableListView) return _howToGetBenefit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_howToGetBenefit);
  }

  final List<Map<String, dynamic>> _sources;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  @override
  String toString() {
    return 'ProgramResult(programSlug: $programSlug, programName: $programName, kind: $kind, category: $category, family: $family, eligibilityStatus: $eligibilityStatus, decisionCertainty: $decisionCertainty, certaintyBreakdown: $certaintyBreakdown, estimatedAmount: $estimatedAmount, summary: $summary, jurisdiction: $jurisdiction, agency: $agency, applyUrl: $applyUrl, matchedReasons: $matchedReasons, missingFacts: $missingFacts, failedReasons: $failedReasons, documents: $documents, dataGatheredFrom: $dataGatheredFrom, howToGetBenefit: $howToGetBenefit, sources: $sources)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramResultImpl &&
            (identical(other.programSlug, programSlug) ||
                other.programSlug == programSlug) &&
            (identical(other.programName, programName) ||
                other.programName == programName) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.eligibilityStatus, eligibilityStatus) ||
                other.eligibilityStatus == eligibilityStatus) &&
            (identical(other.decisionCertainty, decisionCertainty) ||
                other.decisionCertainty == decisionCertainty) &&
            const DeepCollectionEquality().equals(
              other._certaintyBreakdown,
              _certaintyBreakdown,
            ) &&
            const DeepCollectionEquality().equals(
              other._estimatedAmount,
              _estimatedAmount,
            ) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality().equals(
              other._jurisdiction,
              _jurisdiction,
            ) &&
            (identical(other.agency, agency) || other.agency == agency) &&
            (identical(other.applyUrl, applyUrl) ||
                other.applyUrl == applyUrl) &&
            const DeepCollectionEquality().equals(
              other._matchedReasons,
              _matchedReasons,
            ) &&
            const DeepCollectionEquality().equals(
              other._missingFacts,
              _missingFacts,
            ) &&
            const DeepCollectionEquality().equals(
              other._failedReasons,
              _failedReasons,
            ) &&
            const DeepCollectionEquality().equals(
              other._documents,
              _documents,
            ) &&
            const DeepCollectionEquality().equals(
              other._dataGatheredFrom,
              _dataGatheredFrom,
            ) &&
            const DeepCollectionEquality().equals(
              other._howToGetBenefit,
              _howToGetBenefit,
            ) &&
            const DeepCollectionEquality().equals(other._sources, _sources));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    programSlug,
    programName,
    kind,
    category,
    family,
    eligibilityStatus,
    decisionCertainty,
    const DeepCollectionEquality().hash(_certaintyBreakdown),
    const DeepCollectionEquality().hash(_estimatedAmount),
    summary,
    const DeepCollectionEquality().hash(_jurisdiction),
    agency,
    applyUrl,
    const DeepCollectionEquality().hash(_matchedReasons),
    const DeepCollectionEquality().hash(_missingFacts),
    const DeepCollectionEquality().hash(_failedReasons),
    const DeepCollectionEquality().hash(_documents),
    const DeepCollectionEquality().hash(_dataGatheredFrom),
    const DeepCollectionEquality().hash(_howToGetBenefit),
    const DeepCollectionEquality().hash(_sources),
  ]);

  /// Create a copy of ProgramResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramResultImplCopyWith<_$ProgramResultImpl> get copyWith =>
      __$$ProgramResultImplCopyWithImpl<_$ProgramResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramResultImplToJson(this);
  }
}

abstract class _ProgramResult implements ProgramResult {
  const factory _ProgramResult({
    @JsonKey(name: 'program_slug') required final String programSlug,
    @JsonKey(name: 'program_name') required final String programName,
    final String? kind,
    final String? category,
    final String? family,
    @JsonKey(name: 'eligibility_status')
    required final String eligibilityStatus,
    @JsonKey(name: 'decision_certainty') final int decisionCertainty,
    @JsonKey(name: 'certainty_breakdown')
    final Map<String, dynamic> certaintyBreakdown,
    @JsonKey(name: 'estimated_amount')
    final Map<String, dynamic> estimatedAmount,
    final String? summary,
    final Map<String, dynamic> jurisdiction,
    final String? agency,
    @JsonKey(name: 'apply_url') final String? applyUrl,
    @JsonKey(name: 'matched_reasons') final List<String> matchedReasons,
    @JsonKey(name: 'missing_facts') final List<String> missingFacts,
    @JsonKey(name: 'failed_reasons') final List<String> failedReasons,
    final List<Map<String, dynamic>> documents,
    @JsonKey(name: 'data_gathered_from')
    final List<Map<String, dynamic>> dataGatheredFrom,
    @JsonKey(name: 'how_to_get_benefit')
    final List<Map<String, dynamic>> howToGetBenefit,
    final List<Map<String, dynamic>> sources,
  }) = _$ProgramResultImpl;

  factory _ProgramResult.fromJson(Map<String, dynamic> json) =
      _$ProgramResultImpl.fromJson;

  @override
  @JsonKey(name: 'program_slug')
  String get programSlug;
  @override
  @JsonKey(name: 'program_name')
  String get programName;
  @override
  String? get kind;
  @override
  String? get category;
  @override
  String? get family;
  @override
  @JsonKey(name: 'eligibility_status')
  String get eligibilityStatus;
  @override
  @JsonKey(name: 'decision_certainty')
  int get decisionCertainty;
  @override
  @JsonKey(name: 'certainty_breakdown')
  Map<String, dynamic> get certaintyBreakdown;
  @override
  @JsonKey(name: 'estimated_amount')
  Map<String, dynamic> get estimatedAmount;
  @override
  String? get summary;
  @override
  Map<String, dynamic> get jurisdiction;
  @override
  String? get agency;
  @override
  @JsonKey(name: 'apply_url')
  String? get applyUrl;
  @override
  @JsonKey(name: 'matched_reasons')
  List<String> get matchedReasons;
  @override
  @JsonKey(name: 'missing_facts')
  List<String> get missingFacts;
  @override
  @JsonKey(name: 'failed_reasons')
  List<String> get failedReasons;
  @override
  List<Map<String, dynamic>> get documents;
  @override
  @JsonKey(name: 'data_gathered_from')
  List<Map<String, dynamic>> get dataGatheredFrom;
  @override
  @JsonKey(name: 'how_to_get_benefit')
  List<Map<String, dynamic>> get howToGetBenefit;
  @override
  List<Map<String, dynamic>> get sources;

  /// Create a copy of ProgramResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramResultImplCopyWith<_$ProgramResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionResults _$SessionResultsFromJson(Map<String, dynamic> json) {
  return _SessionResults.fromJson(json);
}

/// @nodoc
mixin _$SessionResults {
  @JsonKey(name: 'session_id')
  String get sessionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'federal_results')
  List<ProgramResult> get federalResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_results')
  List<ProgramResult> get stateResults => throw _privateConstructorUsedError;

  /// Serializes this SessionResults to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionResults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionResultsCopyWith<SessionResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionResultsCopyWith<$Res> {
  factory $SessionResultsCopyWith(
    SessionResults value,
    $Res Function(SessionResults) then,
  ) = _$SessionResultsCopyWithImpl<$Res, SessionResults>;
  @useResult
  $Res call({
    @JsonKey(name: 'session_id') String sessionId,
    @JsonKey(name: 'federal_results') List<ProgramResult> federalResults,
    @JsonKey(name: 'state_results') List<ProgramResult> stateResults,
  });
}

/// @nodoc
class _$SessionResultsCopyWithImpl<$Res, $Val extends SessionResults>
    implements $SessionResultsCopyWith<$Res> {
  _$SessionResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionResults
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? federalResults = null,
    Object? stateResults = null,
  }) {
    return _then(
      _value.copyWith(
            sessionId: null == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as String,
            federalResults: null == federalResults
                ? _value.federalResults
                : federalResults // ignore: cast_nullable_to_non_nullable
                      as List<ProgramResult>,
            stateResults: null == stateResults
                ? _value.stateResults
                : stateResults // ignore: cast_nullable_to_non_nullable
                      as List<ProgramResult>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SessionResultsImplCopyWith<$Res>
    implements $SessionResultsCopyWith<$Res> {
  factory _$$SessionResultsImplCopyWith(
    _$SessionResultsImpl value,
    $Res Function(_$SessionResultsImpl) then,
  ) = __$$SessionResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'session_id') String sessionId,
    @JsonKey(name: 'federal_results') List<ProgramResult> federalResults,
    @JsonKey(name: 'state_results') List<ProgramResult> stateResults,
  });
}

/// @nodoc
class __$$SessionResultsImplCopyWithImpl<$Res>
    extends _$SessionResultsCopyWithImpl<$Res, _$SessionResultsImpl>
    implements _$$SessionResultsImplCopyWith<$Res> {
  __$$SessionResultsImplCopyWithImpl(
    _$SessionResultsImpl _value,
    $Res Function(_$SessionResultsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionResults
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? federalResults = null,
    Object? stateResults = null,
  }) {
    return _then(
      _$SessionResultsImpl(
        sessionId: null == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String,
        federalResults: null == federalResults
            ? _value._federalResults
            : federalResults // ignore: cast_nullable_to_non_nullable
                  as List<ProgramResult>,
        stateResults: null == stateResults
            ? _value._stateResults
            : stateResults // ignore: cast_nullable_to_non_nullable
                  as List<ProgramResult>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionResultsImpl implements _SessionResults {
  const _$SessionResultsImpl({
    @JsonKey(name: 'session_id') required this.sessionId,
    @JsonKey(name: 'federal_results')
    final List<ProgramResult> federalResults = const <ProgramResult>[],
    @JsonKey(name: 'state_results')
    final List<ProgramResult> stateResults = const <ProgramResult>[],
  }) : _federalResults = federalResults,
       _stateResults = stateResults;

  factory _$SessionResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionResultsImplFromJson(json);

  @override
  @JsonKey(name: 'session_id')
  final String sessionId;
  final List<ProgramResult> _federalResults;
  @override
  @JsonKey(name: 'federal_results')
  List<ProgramResult> get federalResults {
    if (_federalResults is EqualUnmodifiableListView) return _federalResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_federalResults);
  }

  final List<ProgramResult> _stateResults;
  @override
  @JsonKey(name: 'state_results')
  List<ProgramResult> get stateResults {
    if (_stateResults is EqualUnmodifiableListView) return _stateResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stateResults);
  }

  @override
  String toString() {
    return 'SessionResults(sessionId: $sessionId, federalResults: $federalResults, stateResults: $stateResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionResultsImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            const DeepCollectionEquality().equals(
              other._federalResults,
              _federalResults,
            ) &&
            const DeepCollectionEquality().equals(
              other._stateResults,
              _stateResults,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    sessionId,
    const DeepCollectionEquality().hash(_federalResults),
    const DeepCollectionEquality().hash(_stateResults),
  );

  /// Create a copy of SessionResults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionResultsImplCopyWith<_$SessionResultsImpl> get copyWith =>
      __$$SessionResultsImplCopyWithImpl<_$SessionResultsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionResultsImplToJson(this);
  }
}

abstract class _SessionResults implements SessionResults {
  const factory _SessionResults({
    @JsonKey(name: 'session_id') required final String sessionId,
    @JsonKey(name: 'federal_results') final List<ProgramResult> federalResults,
    @JsonKey(name: 'state_results') final List<ProgramResult> stateResults,
  }) = _$SessionResultsImpl;

  factory _SessionResults.fromJson(Map<String, dynamic> json) =
      _$SessionResultsImpl.fromJson;

  @override
  @JsonKey(name: 'session_id')
  String get sessionId;
  @override
  @JsonKey(name: 'federal_results')
  List<ProgramResult> get federalResults;
  @override
  @JsonKey(name: 'state_results')
  List<ProgramResult> get stateResults;

  /// Create a copy of SessionResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionResultsImplCopyWith<_$SessionResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlanOverview _$PlanOverviewFromJson(Map<String, dynamic> json) {
  return _PlanOverview.fromJson(json);
}

/// @nodoc
mixin _$PlanOverview {
  @JsonKey(name: 'likely_programs')
  int get likelyPrograms => throw _privateConstructorUsedError;
  @JsonKey(name: 'possible_programs')
  int get possiblePrograms => throw _privateConstructorUsedError;
  @JsonKey(name: 'likely_federal_programs')
  int get likelyFederalPrograms => throw _privateConstructorUsedError;
  @JsonKey(name: 'likely_state_programs')
  int get likelyStatePrograms => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_rule_coverage')
  int get averageRuleCoverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'answered_questions')
  int get answeredQuestions => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_question_key')
  String? get nextQuestionKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_monthly_total')
  int get estimatedMonthlyTotal => throw _privateConstructorUsedError;

  /// Serializes this PlanOverview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlanOverview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanOverviewCopyWith<PlanOverview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanOverviewCopyWith<$Res> {
  factory $PlanOverviewCopyWith(
    PlanOverview value,
    $Res Function(PlanOverview) then,
  ) = _$PlanOverviewCopyWithImpl<$Res, PlanOverview>;
  @useResult
  $Res call({
    @JsonKey(name: 'likely_programs') int likelyPrograms,
    @JsonKey(name: 'possible_programs') int possiblePrograms,
    @JsonKey(name: 'likely_federal_programs') int likelyFederalPrograms,
    @JsonKey(name: 'likely_state_programs') int likelyStatePrograms,
    @JsonKey(name: 'average_rule_coverage') int averageRuleCoverage,
    @JsonKey(name: 'answered_questions') int answeredQuestions,
    @JsonKey(name: 'next_question_key') String? nextQuestionKey,
    @JsonKey(name: 'estimated_monthly_total') int estimatedMonthlyTotal,
  });
}

/// @nodoc
class _$PlanOverviewCopyWithImpl<$Res, $Val extends PlanOverview>
    implements $PlanOverviewCopyWith<$Res> {
  _$PlanOverviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanOverview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likelyPrograms = null,
    Object? possiblePrograms = null,
    Object? likelyFederalPrograms = null,
    Object? likelyStatePrograms = null,
    Object? averageRuleCoverage = null,
    Object? answeredQuestions = null,
    Object? nextQuestionKey = freezed,
    Object? estimatedMonthlyTotal = null,
  }) {
    return _then(
      _value.copyWith(
            likelyPrograms: null == likelyPrograms
                ? _value.likelyPrograms
                : likelyPrograms // ignore: cast_nullable_to_non_nullable
                      as int,
            possiblePrograms: null == possiblePrograms
                ? _value.possiblePrograms
                : possiblePrograms // ignore: cast_nullable_to_non_nullable
                      as int,
            likelyFederalPrograms: null == likelyFederalPrograms
                ? _value.likelyFederalPrograms
                : likelyFederalPrograms // ignore: cast_nullable_to_non_nullable
                      as int,
            likelyStatePrograms: null == likelyStatePrograms
                ? _value.likelyStatePrograms
                : likelyStatePrograms // ignore: cast_nullable_to_non_nullable
                      as int,
            averageRuleCoverage: null == averageRuleCoverage
                ? _value.averageRuleCoverage
                : averageRuleCoverage // ignore: cast_nullable_to_non_nullable
                      as int,
            answeredQuestions: null == answeredQuestions
                ? _value.answeredQuestions
                : answeredQuestions // ignore: cast_nullable_to_non_nullable
                      as int,
            nextQuestionKey: freezed == nextQuestionKey
                ? _value.nextQuestionKey
                : nextQuestionKey // ignore: cast_nullable_to_non_nullable
                      as String?,
            estimatedMonthlyTotal: null == estimatedMonthlyTotal
                ? _value.estimatedMonthlyTotal
                : estimatedMonthlyTotal // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlanOverviewImplCopyWith<$Res>
    implements $PlanOverviewCopyWith<$Res> {
  factory _$$PlanOverviewImplCopyWith(
    _$PlanOverviewImpl value,
    $Res Function(_$PlanOverviewImpl) then,
  ) = __$$PlanOverviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'likely_programs') int likelyPrograms,
    @JsonKey(name: 'possible_programs') int possiblePrograms,
    @JsonKey(name: 'likely_federal_programs') int likelyFederalPrograms,
    @JsonKey(name: 'likely_state_programs') int likelyStatePrograms,
    @JsonKey(name: 'average_rule_coverage') int averageRuleCoverage,
    @JsonKey(name: 'answered_questions') int answeredQuestions,
    @JsonKey(name: 'next_question_key') String? nextQuestionKey,
    @JsonKey(name: 'estimated_monthly_total') int estimatedMonthlyTotal,
  });
}

/// @nodoc
class __$$PlanOverviewImplCopyWithImpl<$Res>
    extends _$PlanOverviewCopyWithImpl<$Res, _$PlanOverviewImpl>
    implements _$$PlanOverviewImplCopyWith<$Res> {
  __$$PlanOverviewImplCopyWithImpl(
    _$PlanOverviewImpl _value,
    $Res Function(_$PlanOverviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlanOverview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likelyPrograms = null,
    Object? possiblePrograms = null,
    Object? likelyFederalPrograms = null,
    Object? likelyStatePrograms = null,
    Object? averageRuleCoverage = null,
    Object? answeredQuestions = null,
    Object? nextQuestionKey = freezed,
    Object? estimatedMonthlyTotal = null,
  }) {
    return _then(
      _$PlanOverviewImpl(
        likelyPrograms: null == likelyPrograms
            ? _value.likelyPrograms
            : likelyPrograms // ignore: cast_nullable_to_non_nullable
                  as int,
        possiblePrograms: null == possiblePrograms
            ? _value.possiblePrograms
            : possiblePrograms // ignore: cast_nullable_to_non_nullable
                  as int,
        likelyFederalPrograms: null == likelyFederalPrograms
            ? _value.likelyFederalPrograms
            : likelyFederalPrograms // ignore: cast_nullable_to_non_nullable
                  as int,
        likelyStatePrograms: null == likelyStatePrograms
            ? _value.likelyStatePrograms
            : likelyStatePrograms // ignore: cast_nullable_to_non_nullable
                  as int,
        averageRuleCoverage: null == averageRuleCoverage
            ? _value.averageRuleCoverage
            : averageRuleCoverage // ignore: cast_nullable_to_non_nullable
                  as int,
        answeredQuestions: null == answeredQuestions
            ? _value.answeredQuestions
            : answeredQuestions // ignore: cast_nullable_to_non_nullable
                  as int,
        nextQuestionKey: freezed == nextQuestionKey
            ? _value.nextQuestionKey
            : nextQuestionKey // ignore: cast_nullable_to_non_nullable
                  as String?,
        estimatedMonthlyTotal: null == estimatedMonthlyTotal
            ? _value.estimatedMonthlyTotal
            : estimatedMonthlyTotal // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlanOverviewImpl implements _PlanOverview {
  const _$PlanOverviewImpl({
    @JsonKey(name: 'likely_programs') this.likelyPrograms = 0,
    @JsonKey(name: 'possible_programs') this.possiblePrograms = 0,
    @JsonKey(name: 'likely_federal_programs') this.likelyFederalPrograms = 0,
    @JsonKey(name: 'likely_state_programs') this.likelyStatePrograms = 0,
    @JsonKey(name: 'average_rule_coverage') this.averageRuleCoverage = 0,
    @JsonKey(name: 'answered_questions') this.answeredQuestions = 0,
    @JsonKey(name: 'next_question_key') this.nextQuestionKey,
    @JsonKey(name: 'estimated_monthly_total') this.estimatedMonthlyTotal = 0,
  });

  factory _$PlanOverviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanOverviewImplFromJson(json);

  @override
  @JsonKey(name: 'likely_programs')
  final int likelyPrograms;
  @override
  @JsonKey(name: 'possible_programs')
  final int possiblePrograms;
  @override
  @JsonKey(name: 'likely_federal_programs')
  final int likelyFederalPrograms;
  @override
  @JsonKey(name: 'likely_state_programs')
  final int likelyStatePrograms;
  @override
  @JsonKey(name: 'average_rule_coverage')
  final int averageRuleCoverage;
  @override
  @JsonKey(name: 'answered_questions')
  final int answeredQuestions;
  @override
  @JsonKey(name: 'next_question_key')
  final String? nextQuestionKey;
  @override
  @JsonKey(name: 'estimated_monthly_total')
  final int estimatedMonthlyTotal;

  @override
  String toString() {
    return 'PlanOverview(likelyPrograms: $likelyPrograms, possiblePrograms: $possiblePrograms, likelyFederalPrograms: $likelyFederalPrograms, likelyStatePrograms: $likelyStatePrograms, averageRuleCoverage: $averageRuleCoverage, answeredQuestions: $answeredQuestions, nextQuestionKey: $nextQuestionKey, estimatedMonthlyTotal: $estimatedMonthlyTotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanOverviewImpl &&
            (identical(other.likelyPrograms, likelyPrograms) ||
                other.likelyPrograms == likelyPrograms) &&
            (identical(other.possiblePrograms, possiblePrograms) ||
                other.possiblePrograms == possiblePrograms) &&
            (identical(other.likelyFederalPrograms, likelyFederalPrograms) ||
                other.likelyFederalPrograms == likelyFederalPrograms) &&
            (identical(other.likelyStatePrograms, likelyStatePrograms) ||
                other.likelyStatePrograms == likelyStatePrograms) &&
            (identical(other.averageRuleCoverage, averageRuleCoverage) ||
                other.averageRuleCoverage == averageRuleCoverage) &&
            (identical(other.answeredQuestions, answeredQuestions) ||
                other.answeredQuestions == answeredQuestions) &&
            (identical(other.nextQuestionKey, nextQuestionKey) ||
                other.nextQuestionKey == nextQuestionKey) &&
            (identical(other.estimatedMonthlyTotal, estimatedMonthlyTotal) ||
                other.estimatedMonthlyTotal == estimatedMonthlyTotal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    likelyPrograms,
    possiblePrograms,
    likelyFederalPrograms,
    likelyStatePrograms,
    averageRuleCoverage,
    answeredQuestions,
    nextQuestionKey,
    estimatedMonthlyTotal,
  );

  /// Create a copy of PlanOverview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanOverviewImplCopyWith<_$PlanOverviewImpl> get copyWith =>
      __$$PlanOverviewImplCopyWithImpl<_$PlanOverviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanOverviewImplToJson(this);
  }
}

abstract class _PlanOverview implements PlanOverview {
  const factory _PlanOverview({
    @JsonKey(name: 'likely_programs') final int likelyPrograms,
    @JsonKey(name: 'possible_programs') final int possiblePrograms,
    @JsonKey(name: 'likely_federal_programs') final int likelyFederalPrograms,
    @JsonKey(name: 'likely_state_programs') final int likelyStatePrograms,
    @JsonKey(name: 'average_rule_coverage') final int averageRuleCoverage,
    @JsonKey(name: 'answered_questions') final int answeredQuestions,
    @JsonKey(name: 'next_question_key') final String? nextQuestionKey,
    @JsonKey(name: 'estimated_monthly_total') final int estimatedMonthlyTotal,
  }) = _$PlanOverviewImpl;

  factory _PlanOverview.fromJson(Map<String, dynamic> json) =
      _$PlanOverviewImpl.fromJson;

  @override
  @JsonKey(name: 'likely_programs')
  int get likelyPrograms;
  @override
  @JsonKey(name: 'possible_programs')
  int get possiblePrograms;
  @override
  @JsonKey(name: 'likely_federal_programs')
  int get likelyFederalPrograms;
  @override
  @JsonKey(name: 'likely_state_programs')
  int get likelyStatePrograms;
  @override
  @JsonKey(name: 'average_rule_coverage')
  int get averageRuleCoverage;
  @override
  @JsonKey(name: 'answered_questions')
  int get answeredQuestions;
  @override
  @JsonKey(name: 'next_question_key')
  String? get nextQuestionKey;
  @override
  @JsonKey(name: 'estimated_monthly_total')
  int get estimatedMonthlyTotal;

  /// Create a copy of PlanOverview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanOverviewImplCopyWith<_$PlanOverviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionPlan _$SessionPlanFromJson(Map<String, dynamic> json) {
  return _SessionPlan.fromJson(json);
}

/// @nodoc
mixin _$SessionPlan {
  Map<String, dynamic> get profile => throw _privateConstructorUsedError;
  PlanOverview get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'benefit_stack')
  List<Map<String, dynamic>> get benefitStack =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'top_missing_facts')
  List<Map<String, dynamic>> get topMissingFacts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'action_plan')
  List<Map<String, dynamic>> get actionPlan =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'official_source_hub')
  List<Map<String, dynamic>> get officialSourceHub =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'planning_notes')
  List<String> get planningNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'document_checklist')
  List<Map<String, dynamic>> get documentChecklist =>
      throw _privateConstructorUsedError;

  /// Serializes this SessionPlan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionPlanCopyWith<SessionPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionPlanCopyWith<$Res> {
  factory $SessionPlanCopyWith(
    SessionPlan value,
    $Res Function(SessionPlan) then,
  ) = _$SessionPlanCopyWithImpl<$Res, SessionPlan>;
  @useResult
  $Res call({
    Map<String, dynamic> profile,
    PlanOverview overview,
    @JsonKey(name: 'benefit_stack') List<Map<String, dynamic>> benefitStack,
    @JsonKey(name: 'top_missing_facts')
    List<Map<String, dynamic>> topMissingFacts,
    @JsonKey(name: 'action_plan') List<Map<String, dynamic>> actionPlan,
    @JsonKey(name: 'official_source_hub')
    List<Map<String, dynamic>> officialSourceHub,
    @JsonKey(name: 'planning_notes') List<String> planningNotes,
    @JsonKey(name: 'document_checklist')
    List<Map<String, dynamic>> documentChecklist,
  });

  $PlanOverviewCopyWith<$Res> get overview;
}

/// @nodoc
class _$SessionPlanCopyWithImpl<$Res, $Val extends SessionPlan>
    implements $SessionPlanCopyWith<$Res> {
  _$SessionPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
    Object? overview = null,
    Object? benefitStack = null,
    Object? topMissingFacts = null,
    Object? actionPlan = null,
    Object? officialSourceHub = null,
    Object? planningNotes = null,
    Object? documentChecklist = null,
  }) {
    return _then(
      _value.copyWith(
            profile: null == profile
                ? _value.profile
                : profile // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            overview: null == overview
                ? _value.overview
                : overview // ignore: cast_nullable_to_non_nullable
                      as PlanOverview,
            benefitStack: null == benefitStack
                ? _value.benefitStack
                : benefitStack // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
            topMissingFacts: null == topMissingFacts
                ? _value.topMissingFacts
                : topMissingFacts // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
            actionPlan: null == actionPlan
                ? _value.actionPlan
                : actionPlan // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
            officialSourceHub: null == officialSourceHub
                ? _value.officialSourceHub
                : officialSourceHub // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
            planningNotes: null == planningNotes
                ? _value.planningNotes
                : planningNotes // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            documentChecklist: null == documentChecklist
                ? _value.documentChecklist
                : documentChecklist // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
          )
          as $Val,
    );
  }

  /// Create a copy of SessionPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlanOverviewCopyWith<$Res> get overview {
    return $PlanOverviewCopyWith<$Res>(_value.overview, (value) {
      return _then(_value.copyWith(overview: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionPlanImplCopyWith<$Res>
    implements $SessionPlanCopyWith<$Res> {
  factory _$$SessionPlanImplCopyWith(
    _$SessionPlanImpl value,
    $Res Function(_$SessionPlanImpl) then,
  ) = __$$SessionPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Map<String, dynamic> profile,
    PlanOverview overview,
    @JsonKey(name: 'benefit_stack') List<Map<String, dynamic>> benefitStack,
    @JsonKey(name: 'top_missing_facts')
    List<Map<String, dynamic>> topMissingFacts,
    @JsonKey(name: 'action_plan') List<Map<String, dynamic>> actionPlan,
    @JsonKey(name: 'official_source_hub')
    List<Map<String, dynamic>> officialSourceHub,
    @JsonKey(name: 'planning_notes') List<String> planningNotes,
    @JsonKey(name: 'document_checklist')
    List<Map<String, dynamic>> documentChecklist,
  });

  @override
  $PlanOverviewCopyWith<$Res> get overview;
}

/// @nodoc
class __$$SessionPlanImplCopyWithImpl<$Res>
    extends _$SessionPlanCopyWithImpl<$Res, _$SessionPlanImpl>
    implements _$$SessionPlanImplCopyWith<$Res> {
  __$$SessionPlanImplCopyWithImpl(
    _$SessionPlanImpl _value,
    $Res Function(_$SessionPlanImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
    Object? overview = null,
    Object? benefitStack = null,
    Object? topMissingFacts = null,
    Object? actionPlan = null,
    Object? officialSourceHub = null,
    Object? planningNotes = null,
    Object? documentChecklist = null,
  }) {
    return _then(
      _$SessionPlanImpl(
        profile: null == profile
            ? _value._profile
            : profile // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        overview: null == overview
            ? _value.overview
            : overview // ignore: cast_nullable_to_non_nullable
                  as PlanOverview,
        benefitStack: null == benefitStack
            ? _value._benefitStack
            : benefitStack // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
        topMissingFacts: null == topMissingFacts
            ? _value._topMissingFacts
            : topMissingFacts // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
        actionPlan: null == actionPlan
            ? _value._actionPlan
            : actionPlan // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
        officialSourceHub: null == officialSourceHub
            ? _value._officialSourceHub
            : officialSourceHub // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
        planningNotes: null == planningNotes
            ? _value._planningNotes
            : planningNotes // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        documentChecklist: null == documentChecklist
            ? _value._documentChecklist
            : documentChecklist // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionPlanImpl implements _SessionPlan {
  const _$SessionPlanImpl({
    final Map<String, dynamic> profile = const <String, dynamic>{},
    required this.overview,
    @JsonKey(name: 'benefit_stack')
    final List<Map<String, dynamic>> benefitStack =
        const <Map<String, dynamic>>[],
    @JsonKey(name: 'top_missing_facts')
    final List<Map<String, dynamic>> topMissingFacts =
        const <Map<String, dynamic>>[],
    @JsonKey(name: 'action_plan')
    final List<Map<String, dynamic>> actionPlan =
        const <Map<String, dynamic>>[],
    @JsonKey(name: 'official_source_hub')
    final List<Map<String, dynamic>> officialSourceHub =
        const <Map<String, dynamic>>[],
    @JsonKey(name: 'planning_notes')
    final List<String> planningNotes = const <String>[],
    @JsonKey(name: 'document_checklist')
    final List<Map<String, dynamic>> documentChecklist =
        const <Map<String, dynamic>>[],
  }) : _profile = profile,
       _benefitStack = benefitStack,
       _topMissingFacts = topMissingFacts,
       _actionPlan = actionPlan,
       _officialSourceHub = officialSourceHub,
       _planningNotes = planningNotes,
       _documentChecklist = documentChecklist;

  factory _$SessionPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionPlanImplFromJson(json);

  final Map<String, dynamic> _profile;
  @override
  @JsonKey()
  Map<String, dynamic> get profile {
    if (_profile is EqualUnmodifiableMapView) return _profile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_profile);
  }

  @override
  final PlanOverview overview;
  final List<Map<String, dynamic>> _benefitStack;
  @override
  @JsonKey(name: 'benefit_stack')
  List<Map<String, dynamic>> get benefitStack {
    if (_benefitStack is EqualUnmodifiableListView) return _benefitStack;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_benefitStack);
  }

  final List<Map<String, dynamic>> _topMissingFacts;
  @override
  @JsonKey(name: 'top_missing_facts')
  List<Map<String, dynamic>> get topMissingFacts {
    if (_topMissingFacts is EqualUnmodifiableListView) return _topMissingFacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topMissingFacts);
  }

  final List<Map<String, dynamic>> _actionPlan;
  @override
  @JsonKey(name: 'action_plan')
  List<Map<String, dynamic>> get actionPlan {
    if (_actionPlan is EqualUnmodifiableListView) return _actionPlan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actionPlan);
  }

  final List<Map<String, dynamic>> _officialSourceHub;
  @override
  @JsonKey(name: 'official_source_hub')
  List<Map<String, dynamic>> get officialSourceHub {
    if (_officialSourceHub is EqualUnmodifiableListView)
      return _officialSourceHub;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_officialSourceHub);
  }

  final List<String> _planningNotes;
  @override
  @JsonKey(name: 'planning_notes')
  List<String> get planningNotes {
    if (_planningNotes is EqualUnmodifiableListView) return _planningNotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_planningNotes);
  }

  final List<Map<String, dynamic>> _documentChecklist;
  @override
  @JsonKey(name: 'document_checklist')
  List<Map<String, dynamic>> get documentChecklist {
    if (_documentChecklist is EqualUnmodifiableListView)
      return _documentChecklist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documentChecklist);
  }

  @override
  String toString() {
    return 'SessionPlan(profile: $profile, overview: $overview, benefitStack: $benefitStack, topMissingFacts: $topMissingFacts, actionPlan: $actionPlan, officialSourceHub: $officialSourceHub, planningNotes: $planningNotes, documentChecklist: $documentChecklist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionPlanImpl &&
            const DeepCollectionEquality().equals(other._profile, _profile) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            const DeepCollectionEquality().equals(
              other._benefitStack,
              _benefitStack,
            ) &&
            const DeepCollectionEquality().equals(
              other._topMissingFacts,
              _topMissingFacts,
            ) &&
            const DeepCollectionEquality().equals(
              other._actionPlan,
              _actionPlan,
            ) &&
            const DeepCollectionEquality().equals(
              other._officialSourceHub,
              _officialSourceHub,
            ) &&
            const DeepCollectionEquality().equals(
              other._planningNotes,
              _planningNotes,
            ) &&
            const DeepCollectionEquality().equals(
              other._documentChecklist,
              _documentChecklist,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_profile),
    overview,
    const DeepCollectionEquality().hash(_benefitStack),
    const DeepCollectionEquality().hash(_topMissingFacts),
    const DeepCollectionEquality().hash(_actionPlan),
    const DeepCollectionEquality().hash(_officialSourceHub),
    const DeepCollectionEquality().hash(_planningNotes),
    const DeepCollectionEquality().hash(_documentChecklist),
  );

  /// Create a copy of SessionPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionPlanImplCopyWith<_$SessionPlanImpl> get copyWith =>
      __$$SessionPlanImplCopyWithImpl<_$SessionPlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionPlanImplToJson(this);
  }
}

abstract class _SessionPlan implements SessionPlan {
  const factory _SessionPlan({
    final Map<String, dynamic> profile,
    required final PlanOverview overview,
    @JsonKey(name: 'benefit_stack')
    final List<Map<String, dynamic>> benefitStack,
    @JsonKey(name: 'top_missing_facts')
    final List<Map<String, dynamic>> topMissingFacts,
    @JsonKey(name: 'action_plan') final List<Map<String, dynamic>> actionPlan,
    @JsonKey(name: 'official_source_hub')
    final List<Map<String, dynamic>> officialSourceHub,
    @JsonKey(name: 'planning_notes') final List<String> planningNotes,
    @JsonKey(name: 'document_checklist')
    final List<Map<String, dynamic>> documentChecklist,
  }) = _$SessionPlanImpl;

  factory _SessionPlan.fromJson(Map<String, dynamic> json) =
      _$SessionPlanImpl.fromJson;

  @override
  Map<String, dynamic> get profile;
  @override
  PlanOverview get overview;
  @override
  @JsonKey(name: 'benefit_stack')
  List<Map<String, dynamic>> get benefitStack;
  @override
  @JsonKey(name: 'top_missing_facts')
  List<Map<String, dynamic>> get topMissingFacts;
  @override
  @JsonKey(name: 'action_plan')
  List<Map<String, dynamic>> get actionPlan;
  @override
  @JsonKey(name: 'official_source_hub')
  List<Map<String, dynamic>> get officialSourceHub;
  @override
  @JsonKey(name: 'planning_notes')
  List<String> get planningNotes;
  @override
  @JsonKey(name: 'document_checklist')
  List<Map<String, dynamic>> get documentChecklist;

  /// Create a copy of SessionPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionPlanImplCopyWith<_$SessionPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompareScenarioInput _$CompareScenarioInputFromJson(Map<String, dynamic> json) {
  return _CompareScenarioInput.fromJson(json);
}

/// @nodoc
mixin _$CompareScenarioInput {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Map<String, dynamic> get answers => throw _privateConstructorUsedError;

  /// Serializes this CompareScenarioInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompareScenarioInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompareScenarioInputCopyWith<CompareScenarioInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompareScenarioInputCopyWith<$Res> {
  factory $CompareScenarioInputCopyWith(
    CompareScenarioInput value,
    $Res Function(CompareScenarioInput) then,
  ) = _$CompareScenarioInputCopyWithImpl<$Res, CompareScenarioInput>;
  @useResult
  $Res call({String name, String? description, Map<String, dynamic> answers});
}

/// @nodoc
class _$CompareScenarioInputCopyWithImpl<
  $Res,
  $Val extends CompareScenarioInput
>
    implements $CompareScenarioInputCopyWith<$Res> {
  _$CompareScenarioInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompareScenarioInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? answers = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            answers: null == answers
                ? _value.answers
                : answers // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CompareScenarioInputImplCopyWith<$Res>
    implements $CompareScenarioInputCopyWith<$Res> {
  factory _$$CompareScenarioInputImplCopyWith(
    _$CompareScenarioInputImpl value,
    $Res Function(_$CompareScenarioInputImpl) then,
  ) = __$$CompareScenarioInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? description, Map<String, dynamic> answers});
}

/// @nodoc
class __$$CompareScenarioInputImplCopyWithImpl<$Res>
    extends _$CompareScenarioInputCopyWithImpl<$Res, _$CompareScenarioInputImpl>
    implements _$$CompareScenarioInputImplCopyWith<$Res> {
  __$$CompareScenarioInputImplCopyWithImpl(
    _$CompareScenarioInputImpl _value,
    $Res Function(_$CompareScenarioInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CompareScenarioInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? answers = null,
  }) {
    return _then(
      _$CompareScenarioInputImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        answers: null == answers
            ? _value._answers
            : answers // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CompareScenarioInputImpl implements _CompareScenarioInput {
  const _$CompareScenarioInputImpl({
    required this.name,
    this.description,
    final Map<String, dynamic> answers = const <String, dynamic>{},
  }) : _answers = answers;

  factory _$CompareScenarioInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompareScenarioInputImplFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  final Map<String, dynamic> _answers;
  @override
  @JsonKey()
  Map<String, dynamic> get answers {
    if (_answers is EqualUnmodifiableMapView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_answers);
  }

  @override
  String toString() {
    return 'CompareScenarioInput(name: $name, description: $description, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompareScenarioInputImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    description,
    const DeepCollectionEquality().hash(_answers),
  );

  /// Create a copy of CompareScenarioInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompareScenarioInputImplCopyWith<_$CompareScenarioInputImpl>
  get copyWith =>
      __$$CompareScenarioInputImplCopyWithImpl<_$CompareScenarioInputImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CompareScenarioInputImplToJson(this);
  }
}

abstract class _CompareScenarioInput implements CompareScenarioInput {
  const factory _CompareScenarioInput({
    required final String name,
    final String? description,
    final Map<String, dynamic> answers,
  }) = _$CompareScenarioInputImpl;

  factory _CompareScenarioInput.fromJson(Map<String, dynamic> json) =
      _$CompareScenarioInputImpl.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  Map<String, dynamic> get answers;

  /// Create a copy of CompareScenarioInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompareScenarioInputImplCopyWith<_$CompareScenarioInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

CompareRequest _$CompareRequestFromJson(Map<String, dynamic> json) {
  return _CompareRequest.fromJson(json);
}

/// @nodoc
mixin _$CompareRequest {
  List<CompareScenarioInput> get scenarios =>
      throw _privateConstructorUsedError;

  /// Serializes this CompareRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompareRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompareRequestCopyWith<CompareRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompareRequestCopyWith<$Res> {
  factory $CompareRequestCopyWith(
    CompareRequest value,
    $Res Function(CompareRequest) then,
  ) = _$CompareRequestCopyWithImpl<$Res, CompareRequest>;
  @useResult
  $Res call({List<CompareScenarioInput> scenarios});
}

/// @nodoc
class _$CompareRequestCopyWithImpl<$Res, $Val extends CompareRequest>
    implements $CompareRequestCopyWith<$Res> {
  _$CompareRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompareRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? scenarios = null}) {
    return _then(
      _value.copyWith(
            scenarios: null == scenarios
                ? _value.scenarios
                : scenarios // ignore: cast_nullable_to_non_nullable
                      as List<CompareScenarioInput>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CompareRequestImplCopyWith<$Res>
    implements $CompareRequestCopyWith<$Res> {
  factory _$$CompareRequestImplCopyWith(
    _$CompareRequestImpl value,
    $Res Function(_$CompareRequestImpl) then,
  ) = __$$CompareRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CompareScenarioInput> scenarios});
}

/// @nodoc
class __$$CompareRequestImplCopyWithImpl<$Res>
    extends _$CompareRequestCopyWithImpl<$Res, _$CompareRequestImpl>
    implements _$$CompareRequestImplCopyWith<$Res> {
  __$$CompareRequestImplCopyWithImpl(
    _$CompareRequestImpl _value,
    $Res Function(_$CompareRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CompareRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? scenarios = null}) {
    return _then(
      _$CompareRequestImpl(
        scenarios: null == scenarios
            ? _value._scenarios
            : scenarios // ignore: cast_nullable_to_non_nullable
                  as List<CompareScenarioInput>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CompareRequestImpl implements _CompareRequest {
  const _$CompareRequestImpl({
    final List<CompareScenarioInput> scenarios = const <CompareScenarioInput>[],
  }) : _scenarios = scenarios;

  factory _$CompareRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompareRequestImplFromJson(json);

  final List<CompareScenarioInput> _scenarios;
  @override
  @JsonKey()
  List<CompareScenarioInput> get scenarios {
    if (_scenarios is EqualUnmodifiableListView) return _scenarios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scenarios);
  }

  @override
  String toString() {
    return 'CompareRequest(scenarios: $scenarios)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompareRequestImpl &&
            const DeepCollectionEquality().equals(
              other._scenarios,
              _scenarios,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_scenarios));

  /// Create a copy of CompareRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompareRequestImplCopyWith<_$CompareRequestImpl> get copyWith =>
      __$$CompareRequestImplCopyWithImpl<_$CompareRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CompareRequestImplToJson(this);
  }
}

abstract class _CompareRequest implements CompareRequest {
  const factory _CompareRequest({final List<CompareScenarioInput> scenarios}) =
      _$CompareRequestImpl;

  factory _CompareRequest.fromJson(Map<String, dynamic> json) =
      _$CompareRequestImpl.fromJson;

  @override
  List<CompareScenarioInput> get scenarios;

  /// Create a copy of CompareRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompareRequestImplCopyWith<_$CompareRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScenarioComparison _$ScenarioComparisonFromJson(Map<String, dynamic> json) {
  return _ScenarioComparison.fromJson(json);
}

/// @nodoc
mixin _$ScenarioComparison {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'answer_overrides')
  Map<String, dynamic> get answerOverrides =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'gained_programs')
  List<Map<String, dynamic>> get gainedPrograms =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'improved_programs')
  List<Map<String, dynamic>> get improvedPrograms =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'lost_programs')
  List<Map<String, dynamic>> get lostPrograms =>
      throw _privateConstructorUsedError;

  /// Serializes this ScenarioComparison to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScenarioComparison
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScenarioComparisonCopyWith<ScenarioComparison> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScenarioComparisonCopyWith<$Res> {
  factory $ScenarioComparisonCopyWith(
    ScenarioComparison value,
    $Res Function(ScenarioComparison) then,
  ) = _$ScenarioComparisonCopyWithImpl<$Res, ScenarioComparison>;
  @useResult
  $Res call({
    String name,
    String? description,
    @JsonKey(name: 'answer_overrides') Map<String, dynamic> answerOverrides,
    Map<String, dynamic> summary,
    @JsonKey(name: 'gained_programs') List<Map<String, dynamic>> gainedPrograms,
    @JsonKey(name: 'improved_programs')
    List<Map<String, dynamic>> improvedPrograms,
    @JsonKey(name: 'lost_programs') List<Map<String, dynamic>> lostPrograms,
  });
}

/// @nodoc
class _$ScenarioComparisonCopyWithImpl<$Res, $Val extends ScenarioComparison>
    implements $ScenarioComparisonCopyWith<$Res> {
  _$ScenarioComparisonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScenarioComparison
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? answerOverrides = null,
    Object? summary = null,
    Object? gainedPrograms = null,
    Object? improvedPrograms = null,
    Object? lostPrograms = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            answerOverrides: null == answerOverrides
                ? _value.answerOverrides
                : answerOverrides // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            summary: null == summary
                ? _value.summary
                : summary // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            gainedPrograms: null == gainedPrograms
                ? _value.gainedPrograms
                : gainedPrograms // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
            improvedPrograms: null == improvedPrograms
                ? _value.improvedPrograms
                : improvedPrograms // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
            lostPrograms: null == lostPrograms
                ? _value.lostPrograms
                : lostPrograms // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ScenarioComparisonImplCopyWith<$Res>
    implements $ScenarioComparisonCopyWith<$Res> {
  factory _$$ScenarioComparisonImplCopyWith(
    _$ScenarioComparisonImpl value,
    $Res Function(_$ScenarioComparisonImpl) then,
  ) = __$$ScenarioComparisonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String? description,
    @JsonKey(name: 'answer_overrides') Map<String, dynamic> answerOverrides,
    Map<String, dynamic> summary,
    @JsonKey(name: 'gained_programs') List<Map<String, dynamic>> gainedPrograms,
    @JsonKey(name: 'improved_programs')
    List<Map<String, dynamic>> improvedPrograms,
    @JsonKey(name: 'lost_programs') List<Map<String, dynamic>> lostPrograms,
  });
}

/// @nodoc
class __$$ScenarioComparisonImplCopyWithImpl<$Res>
    extends _$ScenarioComparisonCopyWithImpl<$Res, _$ScenarioComparisonImpl>
    implements _$$ScenarioComparisonImplCopyWith<$Res> {
  __$$ScenarioComparisonImplCopyWithImpl(
    _$ScenarioComparisonImpl _value,
    $Res Function(_$ScenarioComparisonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScenarioComparison
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? answerOverrides = null,
    Object? summary = null,
    Object? gainedPrograms = null,
    Object? improvedPrograms = null,
    Object? lostPrograms = null,
  }) {
    return _then(
      _$ScenarioComparisonImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        answerOverrides: null == answerOverrides
            ? _value._answerOverrides
            : answerOverrides // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        summary: null == summary
            ? _value._summary
            : summary // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        gainedPrograms: null == gainedPrograms
            ? _value._gainedPrograms
            : gainedPrograms // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
        improvedPrograms: null == improvedPrograms
            ? _value._improvedPrograms
            : improvedPrograms // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
        lostPrograms: null == lostPrograms
            ? _value._lostPrograms
            : lostPrograms // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ScenarioComparisonImpl implements _ScenarioComparison {
  const _$ScenarioComparisonImpl({
    required this.name,
    this.description,
    @JsonKey(name: 'answer_overrides')
    final Map<String, dynamic> answerOverrides = const <String, dynamic>{},
    final Map<String, dynamic> summary = const <String, dynamic>{},
    @JsonKey(name: 'gained_programs')
    final List<Map<String, dynamic>> gainedPrograms =
        const <Map<String, dynamic>>[],
    @JsonKey(name: 'improved_programs')
    final List<Map<String, dynamic>> improvedPrograms =
        const <Map<String, dynamic>>[],
    @JsonKey(name: 'lost_programs')
    final List<Map<String, dynamic>> lostPrograms =
        const <Map<String, dynamic>>[],
  }) : _answerOverrides = answerOverrides,
       _summary = summary,
       _gainedPrograms = gainedPrograms,
       _improvedPrograms = improvedPrograms,
       _lostPrograms = lostPrograms;

  factory _$ScenarioComparisonImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScenarioComparisonImplFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  final Map<String, dynamic> _answerOverrides;
  @override
  @JsonKey(name: 'answer_overrides')
  Map<String, dynamic> get answerOverrides {
    if (_answerOverrides is EqualUnmodifiableMapView) return _answerOverrides;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_answerOverrides);
  }

  final Map<String, dynamic> _summary;
  @override
  @JsonKey()
  Map<String, dynamic> get summary {
    if (_summary is EqualUnmodifiableMapView) return _summary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_summary);
  }

  final List<Map<String, dynamic>> _gainedPrograms;
  @override
  @JsonKey(name: 'gained_programs')
  List<Map<String, dynamic>> get gainedPrograms {
    if (_gainedPrograms is EqualUnmodifiableListView) return _gainedPrograms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gainedPrograms);
  }

  final List<Map<String, dynamic>> _improvedPrograms;
  @override
  @JsonKey(name: 'improved_programs')
  List<Map<String, dynamic>> get improvedPrograms {
    if (_improvedPrograms is EqualUnmodifiableListView)
      return _improvedPrograms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_improvedPrograms);
  }

  final List<Map<String, dynamic>> _lostPrograms;
  @override
  @JsonKey(name: 'lost_programs')
  List<Map<String, dynamic>> get lostPrograms {
    if (_lostPrograms is EqualUnmodifiableListView) return _lostPrograms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lostPrograms);
  }

  @override
  String toString() {
    return 'ScenarioComparison(name: $name, description: $description, answerOverrides: $answerOverrides, summary: $summary, gainedPrograms: $gainedPrograms, improvedPrograms: $improvedPrograms, lostPrograms: $lostPrograms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScenarioComparisonImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(
              other._answerOverrides,
              _answerOverrides,
            ) &&
            const DeepCollectionEquality().equals(other._summary, _summary) &&
            const DeepCollectionEquality().equals(
              other._gainedPrograms,
              _gainedPrograms,
            ) &&
            const DeepCollectionEquality().equals(
              other._improvedPrograms,
              _improvedPrograms,
            ) &&
            const DeepCollectionEquality().equals(
              other._lostPrograms,
              _lostPrograms,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    description,
    const DeepCollectionEquality().hash(_answerOverrides),
    const DeepCollectionEquality().hash(_summary),
    const DeepCollectionEquality().hash(_gainedPrograms),
    const DeepCollectionEquality().hash(_improvedPrograms),
    const DeepCollectionEquality().hash(_lostPrograms),
  );

  /// Create a copy of ScenarioComparison
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScenarioComparisonImplCopyWith<_$ScenarioComparisonImpl> get copyWith =>
      __$$ScenarioComparisonImplCopyWithImpl<_$ScenarioComparisonImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ScenarioComparisonImplToJson(this);
  }
}

abstract class _ScenarioComparison implements ScenarioComparison {
  const factory _ScenarioComparison({
    required final String name,
    final String? description,
    @JsonKey(name: 'answer_overrides')
    final Map<String, dynamic> answerOverrides,
    final Map<String, dynamic> summary,
    @JsonKey(name: 'gained_programs')
    final List<Map<String, dynamic>> gainedPrograms,
    @JsonKey(name: 'improved_programs')
    final List<Map<String, dynamic>> improvedPrograms,
    @JsonKey(name: 'lost_programs')
    final List<Map<String, dynamic>> lostPrograms,
  }) = _$ScenarioComparisonImpl;

  factory _ScenarioComparison.fromJson(Map<String, dynamic> json) =
      _$ScenarioComparisonImpl.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'answer_overrides')
  Map<String, dynamic> get answerOverrides;
  @override
  Map<String, dynamic> get summary;
  @override
  @JsonKey(name: 'gained_programs')
  List<Map<String, dynamic>> get gainedPrograms;
  @override
  @JsonKey(name: 'improved_programs')
  List<Map<String, dynamic>> get improvedPrograms;
  @override
  @JsonKey(name: 'lost_programs')
  List<Map<String, dynamic>> get lostPrograms;

  /// Create a copy of ScenarioComparison
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScenarioComparisonImplCopyWith<_$ScenarioComparisonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionCompare _$SessionCompareFromJson(Map<String, dynamic> json) {
  return _SessionCompare.fromJson(json);
}

/// @nodoc
mixin _$SessionCompare {
  @JsonKey(name: 'session_id')
  String get sessionId => throw _privateConstructorUsedError;
  Map<String, dynamic> get baseline => throw _privateConstructorUsedError;
  List<ScenarioComparison> get comparisons =>
      throw _privateConstructorUsedError;

  /// Serializes this SessionCompare to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionCompare
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionCompareCopyWith<SessionCompare> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCompareCopyWith<$Res> {
  factory $SessionCompareCopyWith(
    SessionCompare value,
    $Res Function(SessionCompare) then,
  ) = _$SessionCompareCopyWithImpl<$Res, SessionCompare>;
  @useResult
  $Res call({
    @JsonKey(name: 'session_id') String sessionId,
    Map<String, dynamic> baseline,
    List<ScenarioComparison> comparisons,
  });
}

/// @nodoc
class _$SessionCompareCopyWithImpl<$Res, $Val extends SessionCompare>
    implements $SessionCompareCopyWith<$Res> {
  _$SessionCompareCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionCompare
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? baseline = null,
    Object? comparisons = null,
  }) {
    return _then(
      _value.copyWith(
            sessionId: null == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as String,
            baseline: null == baseline
                ? _value.baseline
                : baseline // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            comparisons: null == comparisons
                ? _value.comparisons
                : comparisons // ignore: cast_nullable_to_non_nullable
                      as List<ScenarioComparison>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SessionCompareImplCopyWith<$Res>
    implements $SessionCompareCopyWith<$Res> {
  factory _$$SessionCompareImplCopyWith(
    _$SessionCompareImpl value,
    $Res Function(_$SessionCompareImpl) then,
  ) = __$$SessionCompareImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'session_id') String sessionId,
    Map<String, dynamic> baseline,
    List<ScenarioComparison> comparisons,
  });
}

/// @nodoc
class __$$SessionCompareImplCopyWithImpl<$Res>
    extends _$SessionCompareCopyWithImpl<$Res, _$SessionCompareImpl>
    implements _$$SessionCompareImplCopyWith<$Res> {
  __$$SessionCompareImplCopyWithImpl(
    _$SessionCompareImpl _value,
    $Res Function(_$SessionCompareImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionCompare
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? baseline = null,
    Object? comparisons = null,
  }) {
    return _then(
      _$SessionCompareImpl(
        sessionId: null == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String,
        baseline: null == baseline
            ? _value._baseline
            : baseline // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        comparisons: null == comparisons
            ? _value._comparisons
            : comparisons // ignore: cast_nullable_to_non_nullable
                  as List<ScenarioComparison>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionCompareImpl implements _SessionCompare {
  const _$SessionCompareImpl({
    @JsonKey(name: 'session_id') required this.sessionId,
    final Map<String, dynamic> baseline = const <String, dynamic>{},
    final List<ScenarioComparison> comparisons = const <ScenarioComparison>[],
  }) : _baseline = baseline,
       _comparisons = comparisons;

  factory _$SessionCompareImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionCompareImplFromJson(json);

  @override
  @JsonKey(name: 'session_id')
  final String sessionId;
  final Map<String, dynamic> _baseline;
  @override
  @JsonKey()
  Map<String, dynamic> get baseline {
    if (_baseline is EqualUnmodifiableMapView) return _baseline;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_baseline);
  }

  final List<ScenarioComparison> _comparisons;
  @override
  @JsonKey()
  List<ScenarioComparison> get comparisons {
    if (_comparisons is EqualUnmodifiableListView) return _comparisons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comparisons);
  }

  @override
  String toString() {
    return 'SessionCompare(sessionId: $sessionId, baseline: $baseline, comparisons: $comparisons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionCompareImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            const DeepCollectionEquality().equals(other._baseline, _baseline) &&
            const DeepCollectionEquality().equals(
              other._comparisons,
              _comparisons,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    sessionId,
    const DeepCollectionEquality().hash(_baseline),
    const DeepCollectionEquality().hash(_comparisons),
  );

  /// Create a copy of SessionCompare
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionCompareImplCopyWith<_$SessionCompareImpl> get copyWith =>
      __$$SessionCompareImplCopyWithImpl<_$SessionCompareImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionCompareImplToJson(this);
  }
}

abstract class _SessionCompare implements SessionCompare {
  const factory _SessionCompare({
    @JsonKey(name: 'session_id') required final String sessionId,
    final Map<String, dynamic> baseline,
    final List<ScenarioComparison> comparisons,
  }) = _$SessionCompareImpl;

  factory _SessionCompare.fromJson(Map<String, dynamic> json) =
      _$SessionCompareImpl.fromJson;

  @override
  @JsonKey(name: 'session_id')
  String get sessionId;
  @override
  Map<String, dynamic> get baseline;
  @override
  List<ScenarioComparison> get comparisons;

  /// Create a copy of SessionCompare
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionCompareImplCopyWith<_$SessionCompareImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
