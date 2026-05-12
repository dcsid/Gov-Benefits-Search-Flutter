// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReviewTask _$ReviewTaskFromJson(Map<String, dynamic> json) {
  return _ReviewTask.fromJson(json);
}

/// @nodoc
mixin _$ReviewTask {
  String get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'diff_type')
  String? get diffType => throw _privateConstructorUsedError;
  @JsonKey(name: 'materiality_score')
  int get materialityScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_title')
  String? get sourceTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_url')
  String? get sourceUrl => throw _privateConstructorUsedError;

  /// Serializes this ReviewTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewTaskCopyWith<ReviewTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewTaskCopyWith<$Res> {
  factory $ReviewTaskCopyWith(
    ReviewTask value,
    $Res Function(ReviewTask) then,
  ) = _$ReviewTaskCopyWithImpl<$Res, ReviewTask>;
  @useResult
  $Res call({
    String id,
    String status,
    @JsonKey(name: 'created_at') String? createdAt,
    String? notes,
    @JsonKey(name: 'diff_type') String? diffType,
    @JsonKey(name: 'materiality_score') int materialityScore,
    @JsonKey(name: 'source_title') String? sourceTitle,
    @JsonKey(name: 'source_url') String? sourceUrl,
  });
}

/// @nodoc
class _$ReviewTaskCopyWithImpl<$Res, $Val extends ReviewTask>
    implements $ReviewTaskCopyWith<$Res> {
  _$ReviewTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? notes = freezed,
    Object? diffType = freezed,
    Object? materialityScore = null,
    Object? sourceTitle = freezed,
    Object? sourceUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
            diffType: freezed == diffType
                ? _value.diffType
                : diffType // ignore: cast_nullable_to_non_nullable
                      as String?,
            materialityScore: null == materialityScore
                ? _value.materialityScore
                : materialityScore // ignore: cast_nullable_to_non_nullable
                      as int,
            sourceTitle: freezed == sourceTitle
                ? _value.sourceTitle
                : sourceTitle // ignore: cast_nullable_to_non_nullable
                      as String?,
            sourceUrl: freezed == sourceUrl
                ? _value.sourceUrl
                : sourceUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewTaskImplCopyWith<$Res>
    implements $ReviewTaskCopyWith<$Res> {
  factory _$$ReviewTaskImplCopyWith(
    _$ReviewTaskImpl value,
    $Res Function(_$ReviewTaskImpl) then,
  ) = __$$ReviewTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String status,
    @JsonKey(name: 'created_at') String? createdAt,
    String? notes,
    @JsonKey(name: 'diff_type') String? diffType,
    @JsonKey(name: 'materiality_score') int materialityScore,
    @JsonKey(name: 'source_title') String? sourceTitle,
    @JsonKey(name: 'source_url') String? sourceUrl,
  });
}

/// @nodoc
class __$$ReviewTaskImplCopyWithImpl<$Res>
    extends _$ReviewTaskCopyWithImpl<$Res, _$ReviewTaskImpl>
    implements _$$ReviewTaskImplCopyWith<$Res> {
  __$$ReviewTaskImplCopyWithImpl(
    _$ReviewTaskImpl _value,
    $Res Function(_$ReviewTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? notes = freezed,
    Object? diffType = freezed,
    Object? materialityScore = null,
    Object? sourceTitle = freezed,
    Object? sourceUrl = freezed,
  }) {
    return _then(
      _$ReviewTaskImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
        diffType: freezed == diffType
            ? _value.diffType
            : diffType // ignore: cast_nullable_to_non_nullable
                  as String?,
        materialityScore: null == materialityScore
            ? _value.materialityScore
            : materialityScore // ignore: cast_nullable_to_non_nullable
                  as int,
        sourceTitle: freezed == sourceTitle
            ? _value.sourceTitle
            : sourceTitle // ignore: cast_nullable_to_non_nullable
                  as String?,
        sourceUrl: freezed == sourceUrl
            ? _value.sourceUrl
            : sourceUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewTaskImpl implements _ReviewTask {
  const _$ReviewTaskImpl({
    required this.id,
    required this.status,
    @JsonKey(name: 'created_at') this.createdAt,
    this.notes,
    @JsonKey(name: 'diff_type') this.diffType,
    @JsonKey(name: 'materiality_score') this.materialityScore = 0,
    @JsonKey(name: 'source_title') this.sourceTitle,
    @JsonKey(name: 'source_url') this.sourceUrl,
  });

  factory _$ReviewTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewTaskImplFromJson(json);

  @override
  final String id;
  @override
  final String status;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  final String? notes;
  @override
  @JsonKey(name: 'diff_type')
  final String? diffType;
  @override
  @JsonKey(name: 'materiality_score')
  final int materialityScore;
  @override
  @JsonKey(name: 'source_title')
  final String? sourceTitle;
  @override
  @JsonKey(name: 'source_url')
  final String? sourceUrl;

  @override
  String toString() {
    return 'ReviewTask(id: $id, status: $status, createdAt: $createdAt, notes: $notes, diffType: $diffType, materialityScore: $materialityScore, sourceTitle: $sourceTitle, sourceUrl: $sourceUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewTaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.diffType, diffType) ||
                other.diffType == diffType) &&
            (identical(other.materialityScore, materialityScore) ||
                other.materialityScore == materialityScore) &&
            (identical(other.sourceTitle, sourceTitle) ||
                other.sourceTitle == sourceTitle) &&
            (identical(other.sourceUrl, sourceUrl) ||
                other.sourceUrl == sourceUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    status,
    createdAt,
    notes,
    diffType,
    materialityScore,
    sourceTitle,
    sourceUrl,
  );

  /// Create a copy of ReviewTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewTaskImplCopyWith<_$ReviewTaskImpl> get copyWith =>
      __$$ReviewTaskImplCopyWithImpl<_$ReviewTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewTaskImplToJson(this);
  }
}

abstract class _ReviewTask implements ReviewTask {
  const factory _ReviewTask({
    required final String id,
    required final String status,
    @JsonKey(name: 'created_at') final String? createdAt,
    final String? notes,
    @JsonKey(name: 'diff_type') final String? diffType,
    @JsonKey(name: 'materiality_score') final int materialityScore,
    @JsonKey(name: 'source_title') final String? sourceTitle,
    @JsonKey(name: 'source_url') final String? sourceUrl,
  }) = _$ReviewTaskImpl;

  factory _ReviewTask.fromJson(Map<String, dynamic> json) =
      _$ReviewTaskImpl.fromJson;

  @override
  String get id;
  @override
  String get status;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  String? get notes;
  @override
  @JsonKey(name: 'diff_type')
  String? get diffType;
  @override
  @JsonKey(name: 'materiality_score')
  int get materialityScore;
  @override
  @JsonKey(name: 'source_title')
  String? get sourceTitle;
  @override
  @JsonKey(name: 'source_url')
  String? get sourceUrl;

  /// Create a copy of ReviewTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewTaskImplCopyWith<_$ReviewTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SyncReport _$SyncReportFromJson(Map<String, dynamic> json) {
  return _SyncReport.fromJson(json);
}

/// @nodoc
mixin _$SyncReport {
  String get federal => throw _privateConstructorUsedError;
  String get states => throw _privateConstructorUsedError;
  @JsonKey(name: 'review_tasks_created')
  int get reviewTasksCreated => throw _privateConstructorUsedError;
  @JsonKey(name: 'crawled_programs')
  int get crawledPrograms => throw _privateConstructorUsedError;
  @JsonKey(name: 'crawl_sources_added')
  int get crawlSourcesAdded => throw _privateConstructorUsedError;
  @JsonKey(name: 'review_tasks')
  List<ReviewTask> get reviewTasks => throw _privateConstructorUsedError;

  /// Serializes this SyncReport to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SyncReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SyncReportCopyWith<SyncReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncReportCopyWith<$Res> {
  factory $SyncReportCopyWith(
    SyncReport value,
    $Res Function(SyncReport) then,
  ) = _$SyncReportCopyWithImpl<$Res, SyncReport>;
  @useResult
  $Res call({
    String federal,
    String states,
    @JsonKey(name: 'review_tasks_created') int reviewTasksCreated,
    @JsonKey(name: 'crawled_programs') int crawledPrograms,
    @JsonKey(name: 'crawl_sources_added') int crawlSourcesAdded,
    @JsonKey(name: 'review_tasks') List<ReviewTask> reviewTasks,
  });
}

/// @nodoc
class _$SyncReportCopyWithImpl<$Res, $Val extends SyncReport>
    implements $SyncReportCopyWith<$Res> {
  _$SyncReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SyncReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? federal = null,
    Object? states = null,
    Object? reviewTasksCreated = null,
    Object? crawledPrograms = null,
    Object? crawlSourcesAdded = null,
    Object? reviewTasks = null,
  }) {
    return _then(
      _value.copyWith(
            federal: null == federal
                ? _value.federal
                : federal // ignore: cast_nullable_to_non_nullable
                      as String,
            states: null == states
                ? _value.states
                : states // ignore: cast_nullable_to_non_nullable
                      as String,
            reviewTasksCreated: null == reviewTasksCreated
                ? _value.reviewTasksCreated
                : reviewTasksCreated // ignore: cast_nullable_to_non_nullable
                      as int,
            crawledPrograms: null == crawledPrograms
                ? _value.crawledPrograms
                : crawledPrograms // ignore: cast_nullable_to_non_nullable
                      as int,
            crawlSourcesAdded: null == crawlSourcesAdded
                ? _value.crawlSourcesAdded
                : crawlSourcesAdded // ignore: cast_nullable_to_non_nullable
                      as int,
            reviewTasks: null == reviewTasks
                ? _value.reviewTasks
                : reviewTasks // ignore: cast_nullable_to_non_nullable
                      as List<ReviewTask>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SyncReportImplCopyWith<$Res>
    implements $SyncReportCopyWith<$Res> {
  factory _$$SyncReportImplCopyWith(
    _$SyncReportImpl value,
    $Res Function(_$SyncReportImpl) then,
  ) = __$$SyncReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String federal,
    String states,
    @JsonKey(name: 'review_tasks_created') int reviewTasksCreated,
    @JsonKey(name: 'crawled_programs') int crawledPrograms,
    @JsonKey(name: 'crawl_sources_added') int crawlSourcesAdded,
    @JsonKey(name: 'review_tasks') List<ReviewTask> reviewTasks,
  });
}

/// @nodoc
class __$$SyncReportImplCopyWithImpl<$Res>
    extends _$SyncReportCopyWithImpl<$Res, _$SyncReportImpl>
    implements _$$SyncReportImplCopyWith<$Res> {
  __$$SyncReportImplCopyWithImpl(
    _$SyncReportImpl _value,
    $Res Function(_$SyncReportImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SyncReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? federal = null,
    Object? states = null,
    Object? reviewTasksCreated = null,
    Object? crawledPrograms = null,
    Object? crawlSourcesAdded = null,
    Object? reviewTasks = null,
  }) {
    return _then(
      _$SyncReportImpl(
        federal: null == federal
            ? _value.federal
            : federal // ignore: cast_nullable_to_non_nullable
                  as String,
        states: null == states
            ? _value.states
            : states // ignore: cast_nullable_to_non_nullable
                  as String,
        reviewTasksCreated: null == reviewTasksCreated
            ? _value.reviewTasksCreated
            : reviewTasksCreated // ignore: cast_nullable_to_non_nullable
                  as int,
        crawledPrograms: null == crawledPrograms
            ? _value.crawledPrograms
            : crawledPrograms // ignore: cast_nullable_to_non_nullable
                  as int,
        crawlSourcesAdded: null == crawlSourcesAdded
            ? _value.crawlSourcesAdded
            : crawlSourcesAdded // ignore: cast_nullable_to_non_nullable
                  as int,
        reviewTasks: null == reviewTasks
            ? _value._reviewTasks
            : reviewTasks // ignore: cast_nullable_to_non_nullable
                  as List<ReviewTask>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SyncReportImpl implements _SyncReport {
  const _$SyncReportImpl({
    this.federal = 'skipped',
    this.states = 'skipped',
    @JsonKey(name: 'review_tasks_created') this.reviewTasksCreated = 0,
    @JsonKey(name: 'crawled_programs') this.crawledPrograms = 0,
    @JsonKey(name: 'crawl_sources_added') this.crawlSourcesAdded = 0,
    @JsonKey(name: 'review_tasks')
    final List<ReviewTask> reviewTasks = const <ReviewTask>[],
  }) : _reviewTasks = reviewTasks;

  factory _$SyncReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$SyncReportImplFromJson(json);

  @override
  @JsonKey()
  final String federal;
  @override
  @JsonKey()
  final String states;
  @override
  @JsonKey(name: 'review_tasks_created')
  final int reviewTasksCreated;
  @override
  @JsonKey(name: 'crawled_programs')
  final int crawledPrograms;
  @override
  @JsonKey(name: 'crawl_sources_added')
  final int crawlSourcesAdded;
  final List<ReviewTask> _reviewTasks;
  @override
  @JsonKey(name: 'review_tasks')
  List<ReviewTask> get reviewTasks {
    if (_reviewTasks is EqualUnmodifiableListView) return _reviewTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviewTasks);
  }

  @override
  String toString() {
    return 'SyncReport(federal: $federal, states: $states, reviewTasksCreated: $reviewTasksCreated, crawledPrograms: $crawledPrograms, crawlSourcesAdded: $crawlSourcesAdded, reviewTasks: $reviewTasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncReportImpl &&
            (identical(other.federal, federal) || other.federal == federal) &&
            (identical(other.states, states) || other.states == states) &&
            (identical(other.reviewTasksCreated, reviewTasksCreated) ||
                other.reviewTasksCreated == reviewTasksCreated) &&
            (identical(other.crawledPrograms, crawledPrograms) ||
                other.crawledPrograms == crawledPrograms) &&
            (identical(other.crawlSourcesAdded, crawlSourcesAdded) ||
                other.crawlSourcesAdded == crawlSourcesAdded) &&
            const DeepCollectionEquality().equals(
              other._reviewTasks,
              _reviewTasks,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    federal,
    states,
    reviewTasksCreated,
    crawledPrograms,
    crawlSourcesAdded,
    const DeepCollectionEquality().hash(_reviewTasks),
  );

  /// Create a copy of SyncReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncReportImplCopyWith<_$SyncReportImpl> get copyWith =>
      __$$SyncReportImplCopyWithImpl<_$SyncReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SyncReportImplToJson(this);
  }
}

abstract class _SyncReport implements SyncReport {
  const factory _SyncReport({
    final String federal,
    final String states,
    @JsonKey(name: 'review_tasks_created') final int reviewTasksCreated,
    @JsonKey(name: 'crawled_programs') final int crawledPrograms,
    @JsonKey(name: 'crawl_sources_added') final int crawlSourcesAdded,
    @JsonKey(name: 'review_tasks') final List<ReviewTask> reviewTasks,
  }) = _$SyncReportImpl;

  factory _SyncReport.fromJson(Map<String, dynamic> json) =
      _$SyncReportImpl.fromJson;

  @override
  String get federal;
  @override
  String get states;
  @override
  @JsonKey(name: 'review_tasks_created')
  int get reviewTasksCreated;
  @override
  @JsonKey(name: 'crawled_programs')
  int get crawledPrograms;
  @override
  @JsonKey(name: 'crawl_sources_added')
  int get crawlSourcesAdded;
  @override
  @JsonKey(name: 'review_tasks')
  List<ReviewTask> get reviewTasks;

  /// Create a copy of SyncReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SyncReportImplCopyWith<_$SyncReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
