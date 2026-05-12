// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explorer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ExplorerSearchRequest _$ExplorerSearchRequestFromJson(
  Map<String, dynamic> json,
) {
  return _ExplorerSearchRequest.fromJson(json);
}

/// @nodoc
mixin _$ExplorerSearchRequest {
  String get query => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get scope => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_code')
  String? get stateCode => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: 'use_llm')
  bool get useLlm => throw _privateConstructorUsedError;

  /// Serializes this ExplorerSearchRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExplorerSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExplorerSearchRequestCopyWith<ExplorerSearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplorerSearchRequestCopyWith<$Res> {
  factory $ExplorerSearchRequestCopyWith(
    ExplorerSearchRequest value,
    $Res Function(ExplorerSearchRequest) then,
  ) = _$ExplorerSearchRequestCopyWithImpl<$Res, ExplorerSearchRequest>;
  @useResult
  $Res call({
    String query,
    String description,
    String scope,
    @JsonKey(name: 'state_code') String? stateCode,
    List<String> categories,
    int limit,
    @JsonKey(name: 'use_llm') bool useLlm,
  });
}

/// @nodoc
class _$ExplorerSearchRequestCopyWithImpl<
  $Res,
  $Val extends ExplorerSearchRequest
>
    implements $ExplorerSearchRequestCopyWith<$Res> {
  _$ExplorerSearchRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExplorerSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? description = null,
    Object? scope = null,
    Object? stateCode = freezed,
    Object? categories = null,
    Object? limit = null,
    Object? useLlm = null,
  }) {
    return _then(
      _value.copyWith(
            query: null == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
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
            limit: null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$ExplorerSearchRequestImplCopyWith<$Res>
    implements $ExplorerSearchRequestCopyWith<$Res> {
  factory _$$ExplorerSearchRequestImplCopyWith(
    _$ExplorerSearchRequestImpl value,
    $Res Function(_$ExplorerSearchRequestImpl) then,
  ) = __$$ExplorerSearchRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String query,
    String description,
    String scope,
    @JsonKey(name: 'state_code') String? stateCode,
    List<String> categories,
    int limit,
    @JsonKey(name: 'use_llm') bool useLlm,
  });
}

/// @nodoc
class __$$ExplorerSearchRequestImplCopyWithImpl<$Res>
    extends
        _$ExplorerSearchRequestCopyWithImpl<$Res, _$ExplorerSearchRequestImpl>
    implements _$$ExplorerSearchRequestImplCopyWith<$Res> {
  __$$ExplorerSearchRequestImplCopyWithImpl(
    _$ExplorerSearchRequestImpl _value,
    $Res Function(_$ExplorerSearchRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExplorerSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? description = null,
    Object? scope = null,
    Object? stateCode = freezed,
    Object? categories = null,
    Object? limit = null,
    Object? useLlm = null,
  }) {
    return _then(
      _$ExplorerSearchRequestImpl(
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
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
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
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
class _$ExplorerSearchRequestImpl implements _ExplorerSearchRequest {
  const _$ExplorerSearchRequestImpl({
    this.query = '',
    this.description = '',
    this.scope = 'both',
    @JsonKey(name: 'state_code') this.stateCode,
    final List<String> categories = const <String>[],
    this.limit = 20,
    @JsonKey(name: 'use_llm') this.useLlm = true,
  }) : _categories = categories;

  factory _$ExplorerSearchRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExplorerSearchRequestImplFromJson(json);

  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final String description;
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
  @JsonKey()
  final int limit;
  @override
  @JsonKey(name: 'use_llm')
  final bool useLlm;

  @override
  String toString() {
    return 'ExplorerSearchRequest(query: $query, description: $description, scope: $scope, stateCode: $stateCode, categories: $categories, limit: $limit, useLlm: $useLlm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExplorerSearchRequestImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.stateCode, stateCode) ||
                other.stateCode == stateCode) &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.useLlm, useLlm) || other.useLlm == useLlm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    query,
    description,
    scope,
    stateCode,
    const DeepCollectionEquality().hash(_categories),
    limit,
    useLlm,
  );

  /// Create a copy of ExplorerSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExplorerSearchRequestImplCopyWith<_$ExplorerSearchRequestImpl>
  get copyWith =>
      __$$ExplorerSearchRequestImplCopyWithImpl<_$ExplorerSearchRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ExplorerSearchRequestImplToJson(this);
  }
}

abstract class _ExplorerSearchRequest implements ExplorerSearchRequest {
  const factory _ExplorerSearchRequest({
    final String query,
    final String description,
    final String scope,
    @JsonKey(name: 'state_code') final String? stateCode,
    final List<String> categories,
    final int limit,
    @JsonKey(name: 'use_llm') final bool useLlm,
  }) = _$ExplorerSearchRequestImpl;

  factory _ExplorerSearchRequest.fromJson(Map<String, dynamic> json) =
      _$ExplorerSearchRequestImpl.fromJson;

  @override
  String get query;
  @override
  String get description;
  @override
  String get scope;
  @override
  @JsonKey(name: 'state_code')
  String? get stateCode;
  @override
  List<String> get categories;
  @override
  int get limit;
  @override
  @JsonKey(name: 'use_llm')
  bool get useLlm;

  /// Create a copy of ExplorerSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExplorerSearchRequestImplCopyWith<_$ExplorerSearchRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ExplorerSearchResponse _$ExplorerSearchResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ExplorerSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$ExplorerSearchResponse {
  String get mode => throw _privateConstructorUsedError;
  Map<String, dynamic> get interpretation => throw _privateConstructorUsedError;
  List<ExplorerHit> get programs => throw _privateConstructorUsedError;

  /// Serializes this ExplorerSearchResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExplorerSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExplorerSearchResponseCopyWith<ExplorerSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplorerSearchResponseCopyWith<$Res> {
  factory $ExplorerSearchResponseCopyWith(
    ExplorerSearchResponse value,
    $Res Function(ExplorerSearchResponse) then,
  ) = _$ExplorerSearchResponseCopyWithImpl<$Res, ExplorerSearchResponse>;
  @useResult
  $Res call({
    String mode,
    Map<String, dynamic> interpretation,
    List<ExplorerHit> programs,
  });
}

/// @nodoc
class _$ExplorerSearchResponseCopyWithImpl<
  $Res,
  $Val extends ExplorerSearchResponse
>
    implements $ExplorerSearchResponseCopyWith<$Res> {
  _$ExplorerSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExplorerSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? interpretation = null,
    Object? programs = null,
  }) {
    return _then(
      _value.copyWith(
            mode: null == mode
                ? _value.mode
                : mode // ignore: cast_nullable_to_non_nullable
                      as String,
            interpretation: null == interpretation
                ? _value.interpretation
                : interpretation // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            programs: null == programs
                ? _value.programs
                : programs // ignore: cast_nullable_to_non_nullable
                      as List<ExplorerHit>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExplorerSearchResponseImplCopyWith<$Res>
    implements $ExplorerSearchResponseCopyWith<$Res> {
  factory _$$ExplorerSearchResponseImplCopyWith(
    _$ExplorerSearchResponseImpl value,
    $Res Function(_$ExplorerSearchResponseImpl) then,
  ) = __$$ExplorerSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String mode,
    Map<String, dynamic> interpretation,
    List<ExplorerHit> programs,
  });
}

/// @nodoc
class __$$ExplorerSearchResponseImplCopyWithImpl<$Res>
    extends
        _$ExplorerSearchResponseCopyWithImpl<$Res, _$ExplorerSearchResponseImpl>
    implements _$$ExplorerSearchResponseImplCopyWith<$Res> {
  __$$ExplorerSearchResponseImplCopyWithImpl(
    _$ExplorerSearchResponseImpl _value,
    $Res Function(_$ExplorerSearchResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExplorerSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? interpretation = null,
    Object? programs = null,
  }) {
    return _then(
      _$ExplorerSearchResponseImpl(
        mode: null == mode
            ? _value.mode
            : mode // ignore: cast_nullable_to_non_nullable
                  as String,
        interpretation: null == interpretation
            ? _value._interpretation
            : interpretation // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        programs: null == programs
            ? _value._programs
            : programs // ignore: cast_nullable_to_non_nullable
                  as List<ExplorerHit>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExplorerSearchResponseImpl implements _ExplorerSearchResponse {
  const _$ExplorerSearchResponseImpl({
    required this.mode,
    final Map<String, dynamic> interpretation = const <String, dynamic>{},
    final List<ExplorerHit> programs = const <ExplorerHit>[],
  }) : _interpretation = interpretation,
       _programs = programs;

  factory _$ExplorerSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExplorerSearchResponseImplFromJson(json);

  @override
  final String mode;
  final Map<String, dynamic> _interpretation;
  @override
  @JsonKey()
  Map<String, dynamic> get interpretation {
    if (_interpretation is EqualUnmodifiableMapView) return _interpretation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_interpretation);
  }

  final List<ExplorerHit> _programs;
  @override
  @JsonKey()
  List<ExplorerHit> get programs {
    if (_programs is EqualUnmodifiableListView) return _programs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_programs);
  }

  @override
  String toString() {
    return 'ExplorerSearchResponse(mode: $mode, interpretation: $interpretation, programs: $programs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExplorerSearchResponseImpl &&
            (identical(other.mode, mode) || other.mode == mode) &&
            const DeepCollectionEquality().equals(
              other._interpretation,
              _interpretation,
            ) &&
            const DeepCollectionEquality().equals(other._programs, _programs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    mode,
    const DeepCollectionEquality().hash(_interpretation),
    const DeepCollectionEquality().hash(_programs),
  );

  /// Create a copy of ExplorerSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExplorerSearchResponseImplCopyWith<_$ExplorerSearchResponseImpl>
  get copyWith =>
      __$$ExplorerSearchResponseImplCopyWithImpl<_$ExplorerSearchResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ExplorerSearchResponseImplToJson(this);
  }
}

abstract class _ExplorerSearchResponse implements ExplorerSearchResponse {
  const factory _ExplorerSearchResponse({
    required final String mode,
    final Map<String, dynamic> interpretation,
    final List<ExplorerHit> programs,
  }) = _$ExplorerSearchResponseImpl;

  factory _ExplorerSearchResponse.fromJson(Map<String, dynamic> json) =
      _$ExplorerSearchResponseImpl.fromJson;

  @override
  String get mode;
  @override
  Map<String, dynamic> get interpretation;
  @override
  List<ExplorerHit> get programs;

  /// Create a copy of ExplorerSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExplorerSearchResponseImplCopyWith<_$ExplorerSearchResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ExplorerHit _$ExplorerHitFromJson(Map<String, dynamic> json) {
  return _ExplorerHit.fromJson(json);
}

/// @nodoc
mixin _$ExplorerHit {
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
  @JsonKey(name: 'match_reasons')
  List<String> get matchReasons => throw _privateConstructorUsedError;
  @JsonKey(name: 'search_score')
  int get searchScore => throw _privateConstructorUsedError;

  /// Serializes this ExplorerHit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExplorerHit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExplorerHitCopyWith<ExplorerHit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplorerHitCopyWith<$Res> {
  factory $ExplorerHitCopyWith(
    ExplorerHit value,
    $Res Function(ExplorerHit) then,
  ) = _$ExplorerHitCopyWithImpl<$Res, ExplorerHit>;
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
    @JsonKey(name: 'match_reasons') List<String> matchReasons,
    @JsonKey(name: 'search_score') int searchScore,
  });

  $JurisdictionCopyWith<$Res>? get jurisdiction;
}

/// @nodoc
class _$ExplorerHitCopyWithImpl<$Res, $Val extends ExplorerHit>
    implements $ExplorerHitCopyWith<$Res> {
  _$ExplorerHitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExplorerHit
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
    Object? matchReasons = null,
    Object? searchScore = null,
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
            matchReasons: null == matchReasons
                ? _value.matchReasons
                : matchReasons // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            searchScore: null == searchScore
                ? _value.searchScore
                : searchScore // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of ExplorerHit
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
abstract class _$$ExplorerHitImplCopyWith<$Res>
    implements $ExplorerHitCopyWith<$Res> {
  factory _$$ExplorerHitImplCopyWith(
    _$ExplorerHitImpl value,
    $Res Function(_$ExplorerHitImpl) then,
  ) = __$$ExplorerHitImplCopyWithImpl<$Res>;
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
    @JsonKey(name: 'match_reasons') List<String> matchReasons,
    @JsonKey(name: 'search_score') int searchScore,
  });

  @override
  $JurisdictionCopyWith<$Res>? get jurisdiction;
}

/// @nodoc
class __$$ExplorerHitImplCopyWithImpl<$Res>
    extends _$ExplorerHitCopyWithImpl<$Res, _$ExplorerHitImpl>
    implements _$$ExplorerHitImplCopyWith<$Res> {
  __$$ExplorerHitImplCopyWithImpl(
    _$ExplorerHitImpl _value,
    $Res Function(_$ExplorerHitImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExplorerHit
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
    Object? matchReasons = null,
    Object? searchScore = null,
  }) {
    return _then(
      _$ExplorerHitImpl(
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
        matchReasons: null == matchReasons
            ? _value._matchReasons
            : matchReasons // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        searchScore: null == searchScore
            ? _value.searchScore
            : searchScore // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExplorerHitImpl implements _ExplorerHit {
  const _$ExplorerHitImpl({
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
    @JsonKey(name: 'match_reasons')
    final List<String> matchReasons = const <String>[],
    @JsonKey(name: 'search_score') this.searchScore = 0,
  }) : _dataGatheredFrom = dataGatheredFrom,
       _matchReasons = matchReasons;

  factory _$ExplorerHitImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExplorerHitImplFromJson(json);

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

  final List<String> _matchReasons;
  @override
  @JsonKey(name: 'match_reasons')
  List<String> get matchReasons {
    if (_matchReasons is EqualUnmodifiableListView) return _matchReasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matchReasons);
  }

  @override
  @JsonKey(name: 'search_score')
  final int searchScore;

  @override
  String toString() {
    return 'ExplorerHit(slug: $slug, name: $name, kind: $kind, category: $category, family: $family, summary: $summary, jurisdiction: $jurisdiction, agency: $agency, applyUrl: $applyUrl, dataGatheredFrom: $dataGatheredFrom, matchReasons: $matchReasons, searchScore: $searchScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExplorerHitImpl &&
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
            ) &&
            const DeepCollectionEquality().equals(
              other._matchReasons,
              _matchReasons,
            ) &&
            (identical(other.searchScore, searchScore) ||
                other.searchScore == searchScore));
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
    const DeepCollectionEquality().hash(_matchReasons),
    searchScore,
  );

  /// Create a copy of ExplorerHit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExplorerHitImplCopyWith<_$ExplorerHitImpl> get copyWith =>
      __$$ExplorerHitImplCopyWithImpl<_$ExplorerHitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExplorerHitImplToJson(this);
  }
}

abstract class _ExplorerHit implements ExplorerHit {
  const factory _ExplorerHit({
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
    @JsonKey(name: 'match_reasons') final List<String> matchReasons,
    @JsonKey(name: 'search_score') final int searchScore,
  }) = _$ExplorerHitImpl;

  factory _ExplorerHit.fromJson(Map<String, dynamic> json) =
      _$ExplorerHitImpl.fromJson;

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
  @override
  @JsonKey(name: 'match_reasons')
  List<String> get matchReasons;
  @override
  @JsonKey(name: 'search_score')
  int get searchScore;

  /// Create a copy of ExplorerHit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExplorerHitImplCopyWith<_$ExplorerHitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
