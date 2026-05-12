// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HealthCheck _$HealthCheckFromJson(Map<String, dynamic> json) {
  return _HealthCheck.fromJson(json);
}

/// @nodoc
mixin _$HealthCheck {
  String get status => throw _privateConstructorUsedError;
  String get db => throw _privateConstructorUsedError;
  String get llm => throw _privateConstructorUsedError;

  /// Serializes this HealthCheck to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HealthCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HealthCheckCopyWith<HealthCheck> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthCheckCopyWith<$Res> {
  factory $HealthCheckCopyWith(
    HealthCheck value,
    $Res Function(HealthCheck) then,
  ) = _$HealthCheckCopyWithImpl<$Res, HealthCheck>;
  @useResult
  $Res call({String status, String db, String llm});
}

/// @nodoc
class _$HealthCheckCopyWithImpl<$Res, $Val extends HealthCheck>
    implements $HealthCheckCopyWith<$Res> {
  _$HealthCheckCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HealthCheck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? db = null, Object? llm = null}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            db: null == db
                ? _value.db
                : db // ignore: cast_nullable_to_non_nullable
                      as String,
            llm: null == llm
                ? _value.llm
                : llm // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HealthCheckImplCopyWith<$Res>
    implements $HealthCheckCopyWith<$Res> {
  factory _$$HealthCheckImplCopyWith(
    _$HealthCheckImpl value,
    $Res Function(_$HealthCheckImpl) then,
  ) = __$$HealthCheckImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String db, String llm});
}

/// @nodoc
class __$$HealthCheckImplCopyWithImpl<$Res>
    extends _$HealthCheckCopyWithImpl<$Res, _$HealthCheckImpl>
    implements _$$HealthCheckImplCopyWith<$Res> {
  __$$HealthCheckImplCopyWithImpl(
    _$HealthCheckImpl _value,
    $Res Function(_$HealthCheckImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HealthCheck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? db = null, Object? llm = null}) {
    return _then(
      _$HealthCheckImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        db: null == db
            ? _value.db
            : db // ignore: cast_nullable_to_non_nullable
                  as String,
        llm: null == llm
            ? _value.llm
            : llm // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthCheckImpl implements _HealthCheck {
  const _$HealthCheckImpl({
    required this.status,
    required this.db,
    required this.llm,
  });

  factory _$HealthCheckImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthCheckImplFromJson(json);

  @override
  final String status;
  @override
  final String db;
  @override
  final String llm;

  @override
  String toString() {
    return 'HealthCheck(status: $status, db: $db, llm: $llm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthCheckImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.db, db) || other.db == db) &&
            (identical(other.llm, llm) || other.llm == llm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, db, llm);

  /// Create a copy of HealthCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthCheckImplCopyWith<_$HealthCheckImpl> get copyWith =>
      __$$HealthCheckImplCopyWithImpl<_$HealthCheckImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthCheckImplToJson(this);
  }
}

abstract class _HealthCheck implements HealthCheck {
  const factory _HealthCheck({
    required final String status,
    required final String db,
    required final String llm,
  }) = _$HealthCheckImpl;

  factory _HealthCheck.fromJson(Map<String, dynamic> json) =
      _$HealthCheckImpl.fromJson;

  @override
  String get status;
  @override
  String get db;
  @override
  String get llm;

  /// Create a copy of HealthCheck
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthCheckImplCopyWith<_$HealthCheckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
