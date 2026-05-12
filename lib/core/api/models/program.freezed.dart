// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Jurisdiction _$JurisdictionFromJson(Map<String, dynamic> json) {
  return _Jurisdiction.fromJson(json);
}

/// @nodoc
mixin _$Jurisdiction {
  String get code => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Jurisdiction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Jurisdiction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JurisdictionCopyWith<Jurisdiction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JurisdictionCopyWith<$Res> {
  factory $JurisdictionCopyWith(
    Jurisdiction value,
    $Res Function(Jurisdiction) then,
  ) = _$JurisdictionCopyWithImpl<$Res, Jurisdiction>;
  @useResult
  $Res call({String code, String level, String name});
}

/// @nodoc
class _$JurisdictionCopyWithImpl<$Res, $Val extends Jurisdiction>
    implements $JurisdictionCopyWith<$Res> {
  _$JurisdictionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Jurisdiction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? level = null, Object? name = null}) {
    return _then(
      _value.copyWith(
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String,
            level: null == level
                ? _value.level
                : level // ignore: cast_nullable_to_non_nullable
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
abstract class _$$JurisdictionImplCopyWith<$Res>
    implements $JurisdictionCopyWith<$Res> {
  factory _$$JurisdictionImplCopyWith(
    _$JurisdictionImpl value,
    $Res Function(_$JurisdictionImpl) then,
  ) = __$$JurisdictionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String level, String name});
}

/// @nodoc
class __$$JurisdictionImplCopyWithImpl<$Res>
    extends _$JurisdictionCopyWithImpl<$Res, _$JurisdictionImpl>
    implements _$$JurisdictionImplCopyWith<$Res> {
  __$$JurisdictionImplCopyWithImpl(
    _$JurisdictionImpl _value,
    $Res Function(_$JurisdictionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Jurisdiction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? level = null, Object? name = null}) {
    return _then(
      _$JurisdictionImpl(
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
        level: null == level
            ? _value.level
            : level // ignore: cast_nullable_to_non_nullable
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
class _$JurisdictionImpl implements _Jurisdiction {
  const _$JurisdictionImpl({
    required this.code,
    required this.level,
    required this.name,
  });

  factory _$JurisdictionImpl.fromJson(Map<String, dynamic> json) =>
      _$$JurisdictionImplFromJson(json);

  @override
  final String code;
  @override
  final String level;
  @override
  final String name;

  @override
  String toString() {
    return 'Jurisdiction(code: $code, level: $level, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JurisdictionImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, level, name);

  /// Create a copy of Jurisdiction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JurisdictionImplCopyWith<_$JurisdictionImpl> get copyWith =>
      __$$JurisdictionImplCopyWithImpl<_$JurisdictionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JurisdictionImplToJson(this);
  }
}

abstract class _Jurisdiction implements Jurisdiction {
  const factory _Jurisdiction({
    required final String code,
    required final String level,
    required final String name,
  }) = _$JurisdictionImpl;

  factory _Jurisdiction.fromJson(Map<String, dynamic> json) =
      _$JurisdictionImpl.fromJson;

  @override
  String get code;
  @override
  String get level;
  @override
  String get name;

  /// Create a copy of Jurisdiction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JurisdictionImplCopyWith<_$JurisdictionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SourceLink _$SourceLinkFromJson(Map<String, dynamic> json) {
  return _SourceLink.fromJson(json);
}

/// @nodoc
mixin _$SourceLink {
  String? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get agency => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_at')
  String? get verifiedAt => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;

  /// Serializes this SourceLink to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SourceLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SourceLinkCopyWith<SourceLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceLinkCopyWith<$Res> {
  factory $SourceLinkCopyWith(
    SourceLink value,
    $Res Function(SourceLink) then,
  ) = _$SourceLinkCopyWithImpl<$Res, SourceLink>;
  @useResult
  $Res call({
    String? id,
    String title,
    String url,
    String? agency,
    @JsonKey(name: 'verified_at') String? verifiedAt,
    String? kind,
  });
}

/// @nodoc
class _$SourceLinkCopyWithImpl<$Res, $Val extends SourceLink>
    implements $SourceLinkCopyWith<$Res> {
  _$SourceLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SourceLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? url = null,
    Object? agency = freezed,
    Object? verifiedAt = freezed,
    Object? kind = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            url: null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String,
            agency: freezed == agency
                ? _value.agency
                : agency // ignore: cast_nullable_to_non_nullable
                      as String?,
            verifiedAt: freezed == verifiedAt
                ? _value.verifiedAt
                : verifiedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            kind: freezed == kind
                ? _value.kind
                : kind // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SourceLinkImplCopyWith<$Res>
    implements $SourceLinkCopyWith<$Res> {
  factory _$$SourceLinkImplCopyWith(
    _$SourceLinkImpl value,
    $Res Function(_$SourceLinkImpl) then,
  ) = __$$SourceLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String title,
    String url,
    String? agency,
    @JsonKey(name: 'verified_at') String? verifiedAt,
    String? kind,
  });
}

/// @nodoc
class __$$SourceLinkImplCopyWithImpl<$Res>
    extends _$SourceLinkCopyWithImpl<$Res, _$SourceLinkImpl>
    implements _$$SourceLinkImplCopyWith<$Res> {
  __$$SourceLinkImplCopyWithImpl(
    _$SourceLinkImpl _value,
    $Res Function(_$SourceLinkImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SourceLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? url = null,
    Object? agency = freezed,
    Object? verifiedAt = freezed,
    Object? kind = freezed,
  }) {
    return _then(
      _$SourceLinkImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
        agency: freezed == agency
            ? _value.agency
            : agency // ignore: cast_nullable_to_non_nullable
                  as String?,
        verifiedAt: freezed == verifiedAt
            ? _value.verifiedAt
            : verifiedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        kind: freezed == kind
            ? _value.kind
            : kind // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceLinkImpl implements _SourceLink {
  const _$SourceLinkImpl({
    this.id,
    required this.title,
    required this.url,
    this.agency,
    @JsonKey(name: 'verified_at') this.verifiedAt,
    this.kind,
  });

  factory _$SourceLinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceLinkImplFromJson(json);

  @override
  final String? id;
  @override
  final String title;
  @override
  final String url;
  @override
  final String? agency;
  @override
  @JsonKey(name: 'verified_at')
  final String? verifiedAt;
  @override
  final String? kind;

  @override
  String toString() {
    return 'SourceLink(id: $id, title: $title, url: $url, agency: $agency, verifiedAt: $verifiedAt, kind: $kind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceLinkImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.agency, agency) || other.agency == agency) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            (identical(other.kind, kind) || other.kind == kind));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, url, agency, verifiedAt, kind);

  /// Create a copy of SourceLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceLinkImplCopyWith<_$SourceLinkImpl> get copyWith =>
      __$$SourceLinkImplCopyWithImpl<_$SourceLinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceLinkImplToJson(this);
  }
}

abstract class _SourceLink implements SourceLink {
  const factory _SourceLink({
    final String? id,
    required final String title,
    required final String url,
    final String? agency,
    @JsonKey(name: 'verified_at') final String? verifiedAt,
    final String? kind,
  }) = _$SourceLinkImpl;

  factory _SourceLink.fromJson(Map<String, dynamic> json) =
      _$SourceLinkImpl.fromJson;

  @override
  String? get id;
  @override
  String get title;
  @override
  String get url;
  @override
  String? get agency;
  @override
  @JsonKey(name: 'verified_at')
  String? get verifiedAt;
  @override
  String? get kind;

  /// Create a copy of SourceLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SourceLinkImplCopyWith<_$SourceLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Program _$ProgramFromJson(Map<String, dynamic> json) {
  return _Program.fromJson(json);
}

/// @nodoc
mixin _$Program {
  String get slug => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get family => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  Jurisdiction? get jurisdiction => throw _privateConstructorUsedError;
  String? get agency => throw _privateConstructorUsedError;
  @JsonKey(name: 'apply_url')
  String? get applyUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'data_gathered_from')
  List<SourceLink> get dataGatheredFrom => throw _privateConstructorUsedError;

  /// Serializes this Program to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Program
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgramCopyWith<Program> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramCopyWith<$Res> {
  factory $ProgramCopyWith(Program value, $Res Function(Program) then) =
      _$ProgramCopyWithImpl<$Res, Program>;
  @useResult
  $Res call({
    String slug,
    String name,
    String? kind,
    String? category,
    String? family,
    String? summary,
    Jurisdiction? jurisdiction,
    String? agency,
    @JsonKey(name: 'apply_url') String? applyUrl,
    @JsonKey(name: 'data_gathered_from') List<SourceLink> dataGatheredFrom,
  });

  $JurisdictionCopyWith<$Res>? get jurisdiction;
}

/// @nodoc
class _$ProgramCopyWithImpl<$Res, $Val extends Program>
    implements $ProgramCopyWith<$Res> {
  _$ProgramCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Program
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
    Object? name = null,
    Object? kind = freezed,
    Object? category = freezed,
    Object? family = freezed,
    Object? summary = freezed,
    Object? jurisdiction = freezed,
    Object? agency = freezed,
    Object? applyUrl = freezed,
    Object? dataGatheredFrom = null,
  }) {
    return _then(
      _value.copyWith(
            slug: null == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
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
            summary: freezed == summary
                ? _value.summary
                : summary // ignore: cast_nullable_to_non_nullable
                      as String?,
            jurisdiction: freezed == jurisdiction
                ? _value.jurisdiction
                : jurisdiction // ignore: cast_nullable_to_non_nullable
                      as Jurisdiction?,
            agency: freezed == agency
                ? _value.agency
                : agency // ignore: cast_nullable_to_non_nullable
                      as String?,
            applyUrl: freezed == applyUrl
                ? _value.applyUrl
                : applyUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            dataGatheredFrom: null == dataGatheredFrom
                ? _value.dataGatheredFrom
                : dataGatheredFrom // ignore: cast_nullable_to_non_nullable
                      as List<SourceLink>,
          )
          as $Val,
    );
  }

  /// Create a copy of Program
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JurisdictionCopyWith<$Res>? get jurisdiction {
    if (_value.jurisdiction == null) {
      return null;
    }

    return $JurisdictionCopyWith<$Res>(_value.jurisdiction!, (value) {
      return _then(_value.copyWith(jurisdiction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProgramImplCopyWith<$Res> implements $ProgramCopyWith<$Res> {
  factory _$$ProgramImplCopyWith(
    _$ProgramImpl value,
    $Res Function(_$ProgramImpl) then,
  ) = __$$ProgramImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String slug,
    String name,
    String? kind,
    String? category,
    String? family,
    String? summary,
    Jurisdiction? jurisdiction,
    String? agency,
    @JsonKey(name: 'apply_url') String? applyUrl,
    @JsonKey(name: 'data_gathered_from') List<SourceLink> dataGatheredFrom,
  });

  @override
  $JurisdictionCopyWith<$Res>? get jurisdiction;
}

/// @nodoc
class __$$ProgramImplCopyWithImpl<$Res>
    extends _$ProgramCopyWithImpl<$Res, _$ProgramImpl>
    implements _$$ProgramImplCopyWith<$Res> {
  __$$ProgramImplCopyWithImpl(
    _$ProgramImpl _value,
    $Res Function(_$ProgramImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Program
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
    Object? name = null,
    Object? kind = freezed,
    Object? category = freezed,
    Object? family = freezed,
    Object? summary = freezed,
    Object? jurisdiction = freezed,
    Object? agency = freezed,
    Object? applyUrl = freezed,
    Object? dataGatheredFrom = null,
  }) {
    return _then(
      _$ProgramImpl(
        slug: null == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
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
        summary: freezed == summary
            ? _value.summary
            : summary // ignore: cast_nullable_to_non_nullable
                  as String?,
        jurisdiction: freezed == jurisdiction
            ? _value.jurisdiction
            : jurisdiction // ignore: cast_nullable_to_non_nullable
                  as Jurisdiction?,
        agency: freezed == agency
            ? _value.agency
            : agency // ignore: cast_nullable_to_non_nullable
                  as String?,
        applyUrl: freezed == applyUrl
            ? _value.applyUrl
            : applyUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        dataGatheredFrom: null == dataGatheredFrom
            ? _value._dataGatheredFrom
            : dataGatheredFrom // ignore: cast_nullable_to_non_nullable
                  as List<SourceLink>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramImpl implements _Program {
  const _$ProgramImpl({
    required this.slug,
    required this.name,
    this.kind,
    this.category,
    this.family,
    this.summary,
    this.jurisdiction,
    this.agency,
    @JsonKey(name: 'apply_url') this.applyUrl,
    @JsonKey(name: 'data_gathered_from')
    final List<SourceLink> dataGatheredFrom = const <SourceLink>[],
  }) : _dataGatheredFrom = dataGatheredFrom;

  factory _$ProgramImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramImplFromJson(json);

  @override
  final String slug;
  @override
  final String name;
  @override
  final String? kind;
  @override
  final String? category;
  @override
  final String? family;
  @override
  final String? summary;
  @override
  final Jurisdiction? jurisdiction;
  @override
  final String? agency;
  @override
  @JsonKey(name: 'apply_url')
  final String? applyUrl;
  final List<SourceLink> _dataGatheredFrom;
  @override
  @JsonKey(name: 'data_gathered_from')
  List<SourceLink> get dataGatheredFrom {
    if (_dataGatheredFrom is EqualUnmodifiableListView)
      return _dataGatheredFrom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataGatheredFrom);
  }

  @override
  String toString() {
    return 'Program(slug: $slug, name: $name, kind: $kind, category: $category, family: $family, summary: $summary, jurisdiction: $jurisdiction, agency: $agency, applyUrl: $applyUrl, dataGatheredFrom: $dataGatheredFrom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.jurisdiction, jurisdiction) ||
                other.jurisdiction == jurisdiction) &&
            (identical(other.agency, agency) || other.agency == agency) &&
            (identical(other.applyUrl, applyUrl) ||
                other.applyUrl == applyUrl) &&
            const DeepCollectionEquality().equals(
              other._dataGatheredFrom,
              _dataGatheredFrom,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    slug,
    name,
    kind,
    category,
    family,
    summary,
    jurisdiction,
    agency,
    applyUrl,
    const DeepCollectionEquality().hash(_dataGatheredFrom),
  );

  /// Create a copy of Program
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramImplCopyWith<_$ProgramImpl> get copyWith =>
      __$$ProgramImplCopyWithImpl<_$ProgramImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramImplToJson(this);
  }
}

abstract class _Program implements Program {
  const factory _Program({
    required final String slug,
    required final String name,
    final String? kind,
    final String? category,
    final String? family,
    final String? summary,
    final Jurisdiction? jurisdiction,
    final String? agency,
    @JsonKey(name: 'apply_url') final String? applyUrl,
    @JsonKey(name: 'data_gathered_from')
    final List<SourceLink> dataGatheredFrom,
  }) = _$ProgramImpl;

  factory _Program.fromJson(Map<String, dynamic> json) = _$ProgramImpl.fromJson;

  @override
  String get slug;
  @override
  String get name;
  @override
  String? get kind;
  @override
  String? get category;
  @override
  String? get family;
  @override
  String? get summary;
  @override
  Jurisdiction? get jurisdiction;
  @override
  String? get agency;
  @override
  @JsonKey(name: 'apply_url')
  String? get applyUrl;
  @override
  @JsonKey(name: 'data_gathered_from')
  List<SourceLink> get dataGatheredFrom;

  /// Create a copy of Program
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramImplCopyWith<_$ProgramImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProgramDetail _$ProgramDetailFromJson(Map<String, dynamic> json) {
  return _ProgramDetail.fromJson(json);
}

/// @nodoc
mixin _$ProgramDetail {
  String get slug => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get family => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'apply_url')
  String? get applyUrl => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get documents =>
      throw _privateConstructorUsedError;
  Jurisdiction? get jurisdiction => throw _privateConstructorUsedError;
  String? get agency => throw _privateConstructorUsedError;
  @JsonKey(name: 'version_label')
  String? get versionLabel => throw _privateConstructorUsedError;
  List<EligibilityRule> get rules => throw _privateConstructorUsedError;
  @JsonKey(name: 'data_gathered_from')
  List<SourceLink> get dataGatheredFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'how_to_get_benefit')
  List<Map<String, dynamic>> get howToGetBenefit =>
      throw _privateConstructorUsedError;
  List<SourceLink> get sources => throw _privateConstructorUsedError;

  /// Serializes this ProgramDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProgramDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgramDetailCopyWith<ProgramDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramDetailCopyWith<$Res> {
  factory $ProgramDetailCopyWith(
    ProgramDetail value,
    $Res Function(ProgramDetail) then,
  ) = _$ProgramDetailCopyWithImpl<$Res, ProgramDetail>;
  @useResult
  $Res call({
    String slug,
    String name,
    String? kind,
    String? category,
    String? family,
    String? summary,
    @JsonKey(name: 'apply_url') String? applyUrl,
    List<Map<String, dynamic>> documents,
    Jurisdiction? jurisdiction,
    String? agency,
    @JsonKey(name: 'version_label') String? versionLabel,
    List<EligibilityRule> rules,
    @JsonKey(name: 'data_gathered_from') List<SourceLink> dataGatheredFrom,
    @JsonKey(name: 'how_to_get_benefit')
    List<Map<String, dynamic>> howToGetBenefit,
    List<SourceLink> sources,
  });

  $JurisdictionCopyWith<$Res>? get jurisdiction;
}

/// @nodoc
class _$ProgramDetailCopyWithImpl<$Res, $Val extends ProgramDetail>
    implements $ProgramDetailCopyWith<$Res> {
  _$ProgramDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgramDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
    Object? name = null,
    Object? kind = freezed,
    Object? category = freezed,
    Object? family = freezed,
    Object? summary = freezed,
    Object? applyUrl = freezed,
    Object? documents = null,
    Object? jurisdiction = freezed,
    Object? agency = freezed,
    Object? versionLabel = freezed,
    Object? rules = null,
    Object? dataGatheredFrom = null,
    Object? howToGetBenefit = null,
    Object? sources = null,
  }) {
    return _then(
      _value.copyWith(
            slug: null == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
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
            summary: freezed == summary
                ? _value.summary
                : summary // ignore: cast_nullable_to_non_nullable
                      as String?,
            applyUrl: freezed == applyUrl
                ? _value.applyUrl
                : applyUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            documents: null == documents
                ? _value.documents
                : documents // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
            jurisdiction: freezed == jurisdiction
                ? _value.jurisdiction
                : jurisdiction // ignore: cast_nullable_to_non_nullable
                      as Jurisdiction?,
            agency: freezed == agency
                ? _value.agency
                : agency // ignore: cast_nullable_to_non_nullable
                      as String?,
            versionLabel: freezed == versionLabel
                ? _value.versionLabel
                : versionLabel // ignore: cast_nullable_to_non_nullable
                      as String?,
            rules: null == rules
                ? _value.rules
                : rules // ignore: cast_nullable_to_non_nullable
                      as List<EligibilityRule>,
            dataGatheredFrom: null == dataGatheredFrom
                ? _value.dataGatheredFrom
                : dataGatheredFrom // ignore: cast_nullable_to_non_nullable
                      as List<SourceLink>,
            howToGetBenefit: null == howToGetBenefit
                ? _value.howToGetBenefit
                : howToGetBenefit // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
            sources: null == sources
                ? _value.sources
                : sources // ignore: cast_nullable_to_non_nullable
                      as List<SourceLink>,
          )
          as $Val,
    );
  }

  /// Create a copy of ProgramDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JurisdictionCopyWith<$Res>? get jurisdiction {
    if (_value.jurisdiction == null) {
      return null;
    }

    return $JurisdictionCopyWith<$Res>(_value.jurisdiction!, (value) {
      return _then(_value.copyWith(jurisdiction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProgramDetailImplCopyWith<$Res>
    implements $ProgramDetailCopyWith<$Res> {
  factory _$$ProgramDetailImplCopyWith(
    _$ProgramDetailImpl value,
    $Res Function(_$ProgramDetailImpl) then,
  ) = __$$ProgramDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String slug,
    String name,
    String? kind,
    String? category,
    String? family,
    String? summary,
    @JsonKey(name: 'apply_url') String? applyUrl,
    List<Map<String, dynamic>> documents,
    Jurisdiction? jurisdiction,
    String? agency,
    @JsonKey(name: 'version_label') String? versionLabel,
    List<EligibilityRule> rules,
    @JsonKey(name: 'data_gathered_from') List<SourceLink> dataGatheredFrom,
    @JsonKey(name: 'how_to_get_benefit')
    List<Map<String, dynamic>> howToGetBenefit,
    List<SourceLink> sources,
  });

  @override
  $JurisdictionCopyWith<$Res>? get jurisdiction;
}

/// @nodoc
class __$$ProgramDetailImplCopyWithImpl<$Res>
    extends _$ProgramDetailCopyWithImpl<$Res, _$ProgramDetailImpl>
    implements _$$ProgramDetailImplCopyWith<$Res> {
  __$$ProgramDetailImplCopyWithImpl(
    _$ProgramDetailImpl _value,
    $Res Function(_$ProgramDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProgramDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
    Object? name = null,
    Object? kind = freezed,
    Object? category = freezed,
    Object? family = freezed,
    Object? summary = freezed,
    Object? applyUrl = freezed,
    Object? documents = null,
    Object? jurisdiction = freezed,
    Object? agency = freezed,
    Object? versionLabel = freezed,
    Object? rules = null,
    Object? dataGatheredFrom = null,
    Object? howToGetBenefit = null,
    Object? sources = null,
  }) {
    return _then(
      _$ProgramDetailImpl(
        slug: null == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
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
        summary: freezed == summary
            ? _value.summary
            : summary // ignore: cast_nullable_to_non_nullable
                  as String?,
        applyUrl: freezed == applyUrl
            ? _value.applyUrl
            : applyUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        documents: null == documents
            ? _value._documents
            : documents // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
        jurisdiction: freezed == jurisdiction
            ? _value.jurisdiction
            : jurisdiction // ignore: cast_nullable_to_non_nullable
                  as Jurisdiction?,
        agency: freezed == agency
            ? _value.agency
            : agency // ignore: cast_nullable_to_non_nullable
                  as String?,
        versionLabel: freezed == versionLabel
            ? _value.versionLabel
            : versionLabel // ignore: cast_nullable_to_non_nullable
                  as String?,
        rules: null == rules
            ? _value._rules
            : rules // ignore: cast_nullable_to_non_nullable
                  as List<EligibilityRule>,
        dataGatheredFrom: null == dataGatheredFrom
            ? _value._dataGatheredFrom
            : dataGatheredFrom // ignore: cast_nullable_to_non_nullable
                  as List<SourceLink>,
        howToGetBenefit: null == howToGetBenefit
            ? _value._howToGetBenefit
            : howToGetBenefit // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
        sources: null == sources
            ? _value._sources
            : sources // ignore: cast_nullable_to_non_nullable
                  as List<SourceLink>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramDetailImpl implements _ProgramDetail {
  const _$ProgramDetailImpl({
    required this.slug,
    required this.name,
    this.kind,
    this.category,
    this.family,
    this.summary,
    @JsonKey(name: 'apply_url') this.applyUrl,
    final List<Map<String, dynamic>> documents = const <Map<String, dynamic>>[],
    this.jurisdiction,
    this.agency,
    @JsonKey(name: 'version_label') this.versionLabel,
    final List<EligibilityRule> rules = const <EligibilityRule>[],
    @JsonKey(name: 'data_gathered_from')
    final List<SourceLink> dataGatheredFrom = const <SourceLink>[],
    @JsonKey(name: 'how_to_get_benefit')
    final List<Map<String, dynamic>> howToGetBenefit =
        const <Map<String, dynamic>>[],
    final List<SourceLink> sources = const <SourceLink>[],
  }) : _documents = documents,
       _rules = rules,
       _dataGatheredFrom = dataGatheredFrom,
       _howToGetBenefit = howToGetBenefit,
       _sources = sources;

  factory _$ProgramDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramDetailImplFromJson(json);

  @override
  final String slug;
  @override
  final String name;
  @override
  final String? kind;
  @override
  final String? category;
  @override
  final String? family;
  @override
  final String? summary;
  @override
  @JsonKey(name: 'apply_url')
  final String? applyUrl;
  final List<Map<String, dynamic>> _documents;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  final Jurisdiction? jurisdiction;
  @override
  final String? agency;
  @override
  @JsonKey(name: 'version_label')
  final String? versionLabel;
  final List<EligibilityRule> _rules;
  @override
  @JsonKey()
  List<EligibilityRule> get rules {
    if (_rules is EqualUnmodifiableListView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rules);
  }

  final List<SourceLink> _dataGatheredFrom;
  @override
  @JsonKey(name: 'data_gathered_from')
  List<SourceLink> get dataGatheredFrom {
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

  final List<SourceLink> _sources;
  @override
  @JsonKey()
  List<SourceLink> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  @override
  String toString() {
    return 'ProgramDetail(slug: $slug, name: $name, kind: $kind, category: $category, family: $family, summary: $summary, applyUrl: $applyUrl, documents: $documents, jurisdiction: $jurisdiction, agency: $agency, versionLabel: $versionLabel, rules: $rules, dataGatheredFrom: $dataGatheredFrom, howToGetBenefit: $howToGetBenefit, sources: $sources)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramDetailImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.applyUrl, applyUrl) ||
                other.applyUrl == applyUrl) &&
            const DeepCollectionEquality().equals(
              other._documents,
              _documents,
            ) &&
            (identical(other.jurisdiction, jurisdiction) ||
                other.jurisdiction == jurisdiction) &&
            (identical(other.agency, agency) || other.agency == agency) &&
            (identical(other.versionLabel, versionLabel) ||
                other.versionLabel == versionLabel) &&
            const DeepCollectionEquality().equals(other._rules, _rules) &&
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
  int get hashCode => Object.hash(
    runtimeType,
    slug,
    name,
    kind,
    category,
    family,
    summary,
    applyUrl,
    const DeepCollectionEquality().hash(_documents),
    jurisdiction,
    agency,
    versionLabel,
    const DeepCollectionEquality().hash(_rules),
    const DeepCollectionEquality().hash(_dataGatheredFrom),
    const DeepCollectionEquality().hash(_howToGetBenefit),
    const DeepCollectionEquality().hash(_sources),
  );

  /// Create a copy of ProgramDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramDetailImplCopyWith<_$ProgramDetailImpl> get copyWith =>
      __$$ProgramDetailImplCopyWithImpl<_$ProgramDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramDetailImplToJson(this);
  }
}

abstract class _ProgramDetail implements ProgramDetail {
  const factory _ProgramDetail({
    required final String slug,
    required final String name,
    final String? kind,
    final String? category,
    final String? family,
    final String? summary,
    @JsonKey(name: 'apply_url') final String? applyUrl,
    final List<Map<String, dynamic>> documents,
    final Jurisdiction? jurisdiction,
    final String? agency,
    @JsonKey(name: 'version_label') final String? versionLabel,
    final List<EligibilityRule> rules,
    @JsonKey(name: 'data_gathered_from')
    final List<SourceLink> dataGatheredFrom,
    @JsonKey(name: 'how_to_get_benefit')
    final List<Map<String, dynamic>> howToGetBenefit,
    final List<SourceLink> sources,
  }) = _$ProgramDetailImpl;

  factory _ProgramDetail.fromJson(Map<String, dynamic> json) =
      _$ProgramDetailImpl.fromJson;

  @override
  String get slug;
  @override
  String get name;
  @override
  String? get kind;
  @override
  String? get category;
  @override
  String? get family;
  @override
  String? get summary;
  @override
  @JsonKey(name: 'apply_url')
  String? get applyUrl;
  @override
  List<Map<String, dynamic>> get documents;
  @override
  Jurisdiction? get jurisdiction;
  @override
  String? get agency;
  @override
  @JsonKey(name: 'version_label')
  String? get versionLabel;
  @override
  List<EligibilityRule> get rules;
  @override
  @JsonKey(name: 'data_gathered_from')
  List<SourceLink> get dataGatheredFrom;
  @override
  @JsonKey(name: 'how_to_get_benefit')
  List<Map<String, dynamic>> get howToGetBenefit;
  @override
  List<SourceLink> get sources;

  /// Create a copy of ProgramDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramDetailImplCopyWith<_$ProgramDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EligibilityRule _$EligibilityRuleFromJson(Map<String, dynamic> json) {
  return _EligibilityRule.fromJson(json);
}

/// @nodoc
mixin _$EligibilityRule {
  @JsonKey(name: 'question_key')
  String get questionKey => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_values')
  List<dynamic> get expectedValues => throw _privateConstructorUsedError;

  /// Serializes this EligibilityRule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EligibilityRule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EligibilityRuleCopyWith<EligibilityRule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EligibilityRuleCopyWith<$Res> {
  factory $EligibilityRuleCopyWith(
    EligibilityRule value,
    $Res Function(EligibilityRule) then,
  ) = _$EligibilityRuleCopyWithImpl<$Res, EligibilityRule>;
  @useResult
  $Res call({
    @JsonKey(name: 'question_key') String questionKey,
    String label,
    @JsonKey(name: 'expected_values') List<dynamic> expectedValues,
  });
}

/// @nodoc
class _$EligibilityRuleCopyWithImpl<$Res, $Val extends EligibilityRule>
    implements $EligibilityRuleCopyWith<$Res> {
  _$EligibilityRuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EligibilityRule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionKey = null,
    Object? label = null,
    Object? expectedValues = null,
  }) {
    return _then(
      _value.copyWith(
            questionKey: null == questionKey
                ? _value.questionKey
                : questionKey // ignore: cast_nullable_to_non_nullable
                      as String,
            label: null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String,
            expectedValues: null == expectedValues
                ? _value.expectedValues
                : expectedValues // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EligibilityRuleImplCopyWith<$Res>
    implements $EligibilityRuleCopyWith<$Res> {
  factory _$$EligibilityRuleImplCopyWith(
    _$EligibilityRuleImpl value,
    $Res Function(_$EligibilityRuleImpl) then,
  ) = __$$EligibilityRuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'question_key') String questionKey,
    String label,
    @JsonKey(name: 'expected_values') List<dynamic> expectedValues,
  });
}

/// @nodoc
class __$$EligibilityRuleImplCopyWithImpl<$Res>
    extends _$EligibilityRuleCopyWithImpl<$Res, _$EligibilityRuleImpl>
    implements _$$EligibilityRuleImplCopyWith<$Res> {
  __$$EligibilityRuleImplCopyWithImpl(
    _$EligibilityRuleImpl _value,
    $Res Function(_$EligibilityRuleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EligibilityRule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionKey = null,
    Object? label = null,
    Object? expectedValues = null,
  }) {
    return _then(
      _$EligibilityRuleImpl(
        questionKey: null == questionKey
            ? _value.questionKey
            : questionKey // ignore: cast_nullable_to_non_nullable
                  as String,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        expectedValues: null == expectedValues
            ? _value._expectedValues
            : expectedValues // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EligibilityRuleImpl implements _EligibilityRule {
  const _$EligibilityRuleImpl({
    @JsonKey(name: 'question_key') required this.questionKey,
    required this.label,
    @JsonKey(name: 'expected_values')
    final List<dynamic> expectedValues = const <dynamic>[],
  }) : _expectedValues = expectedValues;

  factory _$EligibilityRuleImpl.fromJson(Map<String, dynamic> json) =>
      _$$EligibilityRuleImplFromJson(json);

  @override
  @JsonKey(name: 'question_key')
  final String questionKey;
  @override
  final String label;
  final List<dynamic> _expectedValues;
  @override
  @JsonKey(name: 'expected_values')
  List<dynamic> get expectedValues {
    if (_expectedValues is EqualUnmodifiableListView) return _expectedValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expectedValues);
  }

  @override
  String toString() {
    return 'EligibilityRule(questionKey: $questionKey, label: $label, expectedValues: $expectedValues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EligibilityRuleImpl &&
            (identical(other.questionKey, questionKey) ||
                other.questionKey == questionKey) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(
              other._expectedValues,
              _expectedValues,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    questionKey,
    label,
    const DeepCollectionEquality().hash(_expectedValues),
  );

  /// Create a copy of EligibilityRule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EligibilityRuleImplCopyWith<_$EligibilityRuleImpl> get copyWith =>
      __$$EligibilityRuleImplCopyWithImpl<_$EligibilityRuleImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EligibilityRuleImplToJson(this);
  }
}

abstract class _EligibilityRule implements EligibilityRule {
  const factory _EligibilityRule({
    @JsonKey(name: 'question_key') required final String questionKey,
    required final String label,
    @JsonKey(name: 'expected_values') final List<dynamic> expectedValues,
  }) = _$EligibilityRuleImpl;

  factory _EligibilityRule.fromJson(Map<String, dynamic> json) =
      _$EligibilityRuleImpl.fromJson;

  @override
  @JsonKey(name: 'question_key')
  String get questionKey;
  @override
  String get label;
  @override
  @JsonKey(name: 'expected_values')
  List<dynamic> get expectedValues;

  /// Create a copy of EligibilityRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EligibilityRuleImplCopyWith<_$EligibilityRuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProgramSummary _$ProgramSummaryFromJson(Map<String, dynamic> json) {
  return _ProgramSummary.fromJson(json);
}

/// @nodoc
mixin _$ProgramSummary {
  String get slug => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;

  /// Serializes this ProgramSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProgramSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgramSummaryCopyWith<ProgramSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramSummaryCopyWith<$Res> {
  factory $ProgramSummaryCopyWith(
    ProgramSummary value,
    $Res Function(ProgramSummary) then,
  ) = _$ProgramSummaryCopyWithImpl<$Res, ProgramSummary>;
  @useResult
  $Res call({String slug, String name, String? summary});
}

/// @nodoc
class _$ProgramSummaryCopyWithImpl<$Res, $Val extends ProgramSummary>
    implements $ProgramSummaryCopyWith<$Res> {
  _$ProgramSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgramSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
    Object? name = null,
    Object? summary = freezed,
  }) {
    return _then(
      _value.copyWith(
            slug: null == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            summary: freezed == summary
                ? _value.summary
                : summary // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProgramSummaryImplCopyWith<$Res>
    implements $ProgramSummaryCopyWith<$Res> {
  factory _$$ProgramSummaryImplCopyWith(
    _$ProgramSummaryImpl value,
    $Res Function(_$ProgramSummaryImpl) then,
  ) = __$$ProgramSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String slug, String name, String? summary});
}

/// @nodoc
class __$$ProgramSummaryImplCopyWithImpl<$Res>
    extends _$ProgramSummaryCopyWithImpl<$Res, _$ProgramSummaryImpl>
    implements _$$ProgramSummaryImplCopyWith<$Res> {
  __$$ProgramSummaryImplCopyWithImpl(
    _$ProgramSummaryImpl _value,
    $Res Function(_$ProgramSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProgramSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
    Object? name = null,
    Object? summary = freezed,
  }) {
    return _then(
      _$ProgramSummaryImpl(
        slug: null == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        summary: freezed == summary
            ? _value.summary
            : summary // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramSummaryImpl implements _ProgramSummary {
  const _$ProgramSummaryImpl({
    required this.slug,
    required this.name,
    this.summary,
  });

  factory _$ProgramSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramSummaryImplFromJson(json);

  @override
  final String slug;
  @override
  final String name;
  @override
  final String? summary;

  @override
  String toString() {
    return 'ProgramSummary(slug: $slug, name: $name, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramSummaryImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, slug, name, summary);

  /// Create a copy of ProgramSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramSummaryImplCopyWith<_$ProgramSummaryImpl> get copyWith =>
      __$$ProgramSummaryImplCopyWithImpl<_$ProgramSummaryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramSummaryImplToJson(this);
  }
}

abstract class _ProgramSummary implements ProgramSummary {
  const factory _ProgramSummary({
    required final String slug,
    required final String name,
    final String? summary,
  }) = _$ProgramSummaryImpl;

  factory _ProgramSummary.fromJson(Map<String, dynamic> json) =
      _$ProgramSummaryImpl.fromJson;

  @override
  String get slug;
  @override
  String get name;
  @override
  String? get summary;

  /// Create a copy of ProgramSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramSummaryImplCopyWith<_$ProgramSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
