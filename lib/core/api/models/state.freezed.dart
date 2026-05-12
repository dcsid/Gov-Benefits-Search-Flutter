// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StateInfo _$StateInfoFromJson(Map<String, dynamic> json) {
  return _StateInfo.fromJson(json);
}

/// @nodoc
mixin _$StateInfo {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this StateInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StateInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StateInfoCopyWith<StateInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateInfoCopyWith<$Res> {
  factory $StateInfoCopyWith(StateInfo value, $Res Function(StateInfo) then) =
      _$StateInfoCopyWithImpl<$Res, StateInfo>;
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class _$StateInfoCopyWithImpl<$Res, $Val extends StateInfo>
    implements $StateInfoCopyWith<$Res> {
  _$StateInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StateInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? name = null}) {
    return _then(
      _value.copyWith(
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StateInfoImplCopyWith<$Res>
    implements $StateInfoCopyWith<$Res> {
  factory _$$StateInfoImplCopyWith(
    _$StateInfoImpl value,
    $Res Function(_$StateInfoImpl) then,
  ) = __$$StateInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class __$$StateInfoImplCopyWithImpl<$Res>
    extends _$StateInfoCopyWithImpl<$Res, _$StateInfoImpl>
    implements _$$StateInfoImplCopyWith<$Res> {
  __$$StateInfoImplCopyWithImpl(
    _$StateInfoImpl _value,
    $Res Function(_$StateInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StateInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? name = null}) {
    return _then(
      _$StateInfoImpl(
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StateInfoImpl implements _StateInfo {
  const _$StateInfoImpl({required this.code, required this.name});

  factory _$StateInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StateInfoImplFromJson(json);

  @override
  final String code;
  @override
  final String name;

  @override
  String toString() {
    return 'StateInfo(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateInfoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  /// Create a copy of StateInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StateInfoImplCopyWith<_$StateInfoImpl> get copyWith =>
      __$$StateInfoImplCopyWithImpl<_$StateInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StateInfoImplToJson(this);
  }
}

abstract class _StateInfo implements StateInfo {
  const factory _StateInfo({
    required final String code,
    required final String name,
  }) = _$StateInfoImpl;

  factory _StateInfo.fromJson(Map<String, dynamic> json) =
      _$StateInfoImpl.fromJson;

  @override
  String get code;
  @override
  String get name;

  /// Create a copy of StateInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StateInfoImplCopyWith<_$StateInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
