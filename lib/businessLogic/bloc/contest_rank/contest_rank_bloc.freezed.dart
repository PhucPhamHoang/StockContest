// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contest_rank_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContestRankEvent {
  bool? get isMyRank => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? challengeCodeId,
            int? pageNum,
            int? recordPerPage,
            String? subAccountId,
            bool? isMyRank,
            String? name)
        fetch,
    required TResult Function(bool isMyRank) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? challengeCodeId, int? pageNum, int? recordPerPage,
            String? subAccountId, bool? isMyRank, String? name)?
        fetch,
    TResult? Function(bool isMyRank)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? challengeCodeId, int? pageNum, int? recordPerPage,
            String? subAccountId, bool? isMyRank, String? name)?
        fetch,
    TResult Function(bool isMyRank)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEvent value) fetch,
    required TResult Function(_FilterEvent value) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEvent value)? fetch,
    TResult? Function(_FilterEvent value)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEvent value)? fetch,
    TResult Function(_FilterEvent value)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContestRankEventCopyWith<ContestRankEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContestRankEventCopyWith<$Res> {
  factory $ContestRankEventCopyWith(
          ContestRankEvent value, $Res Function(ContestRankEvent) then) =
      _$ContestRankEventCopyWithImpl<$Res, ContestRankEvent>;
  @useResult
  $Res call({bool isMyRank});
}

/// @nodoc
class _$ContestRankEventCopyWithImpl<$Res, $Val extends ContestRankEvent>
    implements $ContestRankEventCopyWith<$Res> {
  _$ContestRankEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMyRank = null,
  }) {
    return _then(_value.copyWith(
      isMyRank: null == isMyRank
          ? _value.isMyRank!
          : isMyRank // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchEventCopyWith<$Res>
    implements $ContestRankEventCopyWith<$Res> {
  factory _$$_FetchEventCopyWith(
          _$_FetchEvent value, $Res Function(_$_FetchEvent) then) =
      __$$_FetchEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? challengeCodeId,
      int? pageNum,
      int? recordPerPage,
      String? subAccountId,
      bool? isMyRank,
      String? name});
}

/// @nodoc
class __$$_FetchEventCopyWithImpl<$Res>
    extends _$ContestRankEventCopyWithImpl<$Res, _$_FetchEvent>
    implements _$$_FetchEventCopyWith<$Res> {
  __$$_FetchEventCopyWithImpl(
      _$_FetchEvent _value, $Res Function(_$_FetchEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challengeCodeId = freezed,
    Object? pageNum = freezed,
    Object? recordPerPage = freezed,
    Object? subAccountId = freezed,
    Object? isMyRank = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_FetchEvent(
      challengeCodeId: freezed == challengeCodeId
          ? _value.challengeCodeId
          : challengeCodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      pageNum: freezed == pageNum
          ? _value.pageNum
          : pageNum // ignore: cast_nullable_to_non_nullable
              as int?,
      recordPerPage: freezed == recordPerPage
          ? _value.recordPerPage
          : recordPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
      subAccountId: freezed == subAccountId
          ? _value.subAccountId
          : subAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      isMyRank: freezed == isMyRank
          ? _value.isMyRank
          : isMyRank // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FetchEvent implements _FetchEvent {
  const _$_FetchEvent(
      {this.challengeCodeId,
      this.pageNum,
      this.recordPerPage,
      this.subAccountId,
      this.isMyRank,
      this.name});

  @override
  final String? challengeCodeId;
  @override
  final int? pageNum;
  @override
  final int? recordPerPage;
  @override
  final String? subAccountId;
  @override
  final bool? isMyRank;
  @override
  final String? name;

  @override
  String toString() {
    return 'ContestRankEvent.fetch(challengeCodeId: $challengeCodeId, pageNum: $pageNum, recordPerPage: $recordPerPage, subAccountId: $subAccountId, isMyRank: $isMyRank, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchEvent &&
            (identical(other.challengeCodeId, challengeCodeId) ||
                other.challengeCodeId == challengeCodeId) &&
            (identical(other.pageNum, pageNum) || other.pageNum == pageNum) &&
            (identical(other.recordPerPage, recordPerPage) ||
                other.recordPerPage == recordPerPage) &&
            (identical(other.subAccountId, subAccountId) ||
                other.subAccountId == subAccountId) &&
            (identical(other.isMyRank, isMyRank) ||
                other.isMyRank == isMyRank) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, challengeCodeId, pageNum,
      recordPerPage, subAccountId, isMyRank, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchEventCopyWith<_$_FetchEvent> get copyWith =>
      __$$_FetchEventCopyWithImpl<_$_FetchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? challengeCodeId,
            int? pageNum,
            int? recordPerPage,
            String? subAccountId,
            bool? isMyRank,
            String? name)
        fetch,
    required TResult Function(bool isMyRank) filter,
  }) {
    return fetch(
        challengeCodeId, pageNum, recordPerPage, subAccountId, isMyRank, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? challengeCodeId, int? pageNum, int? recordPerPage,
            String? subAccountId, bool? isMyRank, String? name)?
        fetch,
    TResult? Function(bool isMyRank)? filter,
  }) {
    return fetch?.call(
        challengeCodeId, pageNum, recordPerPage, subAccountId, isMyRank, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? challengeCodeId, int? pageNum, int? recordPerPage,
            String? subAccountId, bool? isMyRank, String? name)?
        fetch,
    TResult Function(bool isMyRank)? filter,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(challengeCodeId, pageNum, recordPerPage, subAccountId,
          isMyRank, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEvent value) fetch,
    required TResult Function(_FilterEvent value) filter,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEvent value)? fetch,
    TResult? Function(_FilterEvent value)? filter,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEvent value)? fetch,
    TResult Function(_FilterEvent value)? filter,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchEvent implements ContestRankEvent {
  const factory _FetchEvent(
      {final String? challengeCodeId,
      final int? pageNum,
      final int? recordPerPage,
      final String? subAccountId,
      final bool? isMyRank,
      final String? name}) = _$_FetchEvent;

  String? get challengeCodeId;
  int? get pageNum;
  int? get recordPerPage;
  String? get subAccountId;
  @override
  bool? get isMyRank;
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_FetchEventCopyWith<_$_FetchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FilterEventCopyWith<$Res>
    implements $ContestRankEventCopyWith<$Res> {
  factory _$$_FilterEventCopyWith(
          _$_FilterEvent value, $Res Function(_$_FilterEvent) then) =
      __$$_FilterEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isMyRank});
}

/// @nodoc
class __$$_FilterEventCopyWithImpl<$Res>
    extends _$ContestRankEventCopyWithImpl<$Res, _$_FilterEvent>
    implements _$$_FilterEventCopyWith<$Res> {
  __$$_FilterEventCopyWithImpl(
      _$_FilterEvent _value, $Res Function(_$_FilterEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMyRank = null,
  }) {
    return _then(_$_FilterEvent(
      isMyRank: null == isMyRank
          ? _value.isMyRank
          : isMyRank // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FilterEvent implements _FilterEvent {
  const _$_FilterEvent({required this.isMyRank});

  @override
  final bool isMyRank;

  @override
  String toString() {
    return 'ContestRankEvent.filter(isMyRank: $isMyRank)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterEvent &&
            (identical(other.isMyRank, isMyRank) ||
                other.isMyRank == isMyRank));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMyRank);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterEventCopyWith<_$_FilterEvent> get copyWith =>
      __$$_FilterEventCopyWithImpl<_$_FilterEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? challengeCodeId,
            int? pageNum,
            int? recordPerPage,
            String? subAccountId,
            bool? isMyRank,
            String? name)
        fetch,
    required TResult Function(bool isMyRank) filter,
  }) {
    return filter(isMyRank);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? challengeCodeId, int? pageNum, int? recordPerPage,
            String? subAccountId, bool? isMyRank, String? name)?
        fetch,
    TResult? Function(bool isMyRank)? filter,
  }) {
    return filter?.call(isMyRank);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? challengeCodeId, int? pageNum, int? recordPerPage,
            String? subAccountId, bool? isMyRank, String? name)?
        fetch,
    TResult Function(bool isMyRank)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(isMyRank);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEvent value) fetch,
    required TResult Function(_FilterEvent value) filter,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEvent value)? fetch,
    TResult? Function(_FilterEvent value)? filter,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEvent value)? fetch,
    TResult Function(_FilterEvent value)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class _FilterEvent implements ContestRankEvent {
  const factory _FilterEvent({required final bool isMyRank}) = _$_FilterEvent;

  @override
  bool get isMyRank;
  @override
  @JsonKey(ignore: true)
  _$$_FilterEventCopyWith<_$_FilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContestRankData {
  List<ContestRankModel> get ranks => throw _privateConstructorUsedError;
  ContestRankModel? get myRank => throw _privateConstructorUsedError;
  int get pageNum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContestRankDataCopyWith<ContestRankData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContestRankDataCopyWith<$Res> {
  factory $ContestRankDataCopyWith(
          ContestRankData value, $Res Function(ContestRankData) then) =
      _$ContestRankDataCopyWithImpl<$Res, ContestRankData>;
  @useResult
  $Res call(
      {List<ContestRankModel> ranks, ContestRankModel? myRank, int pageNum});
}

/// @nodoc
class _$ContestRankDataCopyWithImpl<$Res, $Val extends ContestRankData>
    implements $ContestRankDataCopyWith<$Res> {
  _$ContestRankDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ranks = null,
    Object? myRank = freezed,
    Object? pageNum = null,
  }) {
    return _then(_value.copyWith(
      ranks: null == ranks
          ? _value.ranks
          : ranks // ignore: cast_nullable_to_non_nullable
              as List<ContestRankModel>,
      myRank: freezed == myRank
          ? _value.myRank
          : myRank // ignore: cast_nullable_to_non_nullable
              as ContestRankModel?,
      pageNum: null == pageNum
          ? _value.pageNum
          : pageNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContestRankDataCopyWith<$Res>
    implements $ContestRankDataCopyWith<$Res> {
  factory _$$_ContestRankDataCopyWith(
          _$_ContestRankData value, $Res Function(_$_ContestRankData) then) =
      __$$_ContestRankDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ContestRankModel> ranks, ContestRankModel? myRank, int pageNum});
}

/// @nodoc
class __$$_ContestRankDataCopyWithImpl<$Res>
    extends _$ContestRankDataCopyWithImpl<$Res, _$_ContestRankData>
    implements _$$_ContestRankDataCopyWith<$Res> {
  __$$_ContestRankDataCopyWithImpl(
      _$_ContestRankData _value, $Res Function(_$_ContestRankData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ranks = null,
    Object? myRank = freezed,
    Object? pageNum = null,
  }) {
    return _then(_$_ContestRankData(
      ranks: null == ranks
          ? _value._ranks
          : ranks // ignore: cast_nullable_to_non_nullable
              as List<ContestRankModel>,
      myRank: freezed == myRank
          ? _value.myRank
          : myRank // ignore: cast_nullable_to_non_nullable
              as ContestRankModel?,
      pageNum: null == pageNum
          ? _value.pageNum
          : pageNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ContestRankData implements _ContestRankData {
  const _$_ContestRankData(
      {final List<ContestRankModel> ranks = const [],
      this.myRank,
      this.pageNum = 1})
      : _ranks = ranks;

  final List<ContestRankModel> _ranks;
  @override
  @JsonKey()
  List<ContestRankModel> get ranks {
    if (_ranks is EqualUnmodifiableListView) return _ranks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ranks);
  }

  @override
  final ContestRankModel? myRank;
  @override
  @JsonKey()
  final int pageNum;

  @override
  String toString() {
    return 'ContestRankData(ranks: $ranks, myRank: $myRank, pageNum: $pageNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContestRankData &&
            const DeepCollectionEquality().equals(other._ranks, _ranks) &&
            (identical(other.myRank, myRank) || other.myRank == myRank) &&
            (identical(other.pageNum, pageNum) || other.pageNum == pageNum));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_ranks), myRank, pageNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContestRankDataCopyWith<_$_ContestRankData> get copyWith =>
      __$$_ContestRankDataCopyWithImpl<_$_ContestRankData>(this, _$identity);
}

abstract class _ContestRankData implements ContestRankData {
  const factory _ContestRankData(
      {final List<ContestRankModel> ranks,
      final ContestRankModel? myRank,
      final int pageNum}) = _$_ContestRankData;

  @override
  List<ContestRankModel> get ranks;
  @override
  ContestRankModel? get myRank;
  @override
  int get pageNum;
  @override
  @JsonKey(ignore: true)
  _$$_ContestRankDataCopyWith<_$_ContestRankData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContestRankState {
  ContestRankData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContestRankData data) init,
    required TResult Function(ContestRankData data) loading,
    required TResult Function(ContestRankData data, bool isMyRank) waiting,
    required TResult Function(ContestRankData data) success,
    required TResult Function(ContestRankData data, String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestRankData data)? init,
    TResult? Function(ContestRankData data)? loading,
    TResult? Function(ContestRankData data, bool isMyRank)? waiting,
    TResult? Function(ContestRankData data)? success,
    TResult? Function(ContestRankData data, String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestRankData data)? init,
    TResult Function(ContestRankData data)? loading,
    TResult Function(ContestRankData data, bool isMyRank)? waiting,
    TResult Function(ContestRankData data)? success,
    TResult Function(ContestRankData data, String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) init,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_WaitingState value) waiting,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_WaitingState value)? waiting,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_WaitingState value)? waiting,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContestRankStateCopyWith<ContestRankState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContestRankStateCopyWith<$Res> {
  factory $ContestRankStateCopyWith(
          ContestRankState value, $Res Function(ContestRankState) then) =
      _$ContestRankStateCopyWithImpl<$Res, ContestRankState>;
  @useResult
  $Res call({ContestRankData data});

  $ContestRankDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ContestRankStateCopyWithImpl<$Res, $Val extends ContestRankState>
    implements $ContestRankStateCopyWith<$Res> {
  _$ContestRankStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ContestRankData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContestRankDataCopyWith<$Res> get data {
    return $ContestRankDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitStateCopyWith<$Res>
    implements $ContestRankStateCopyWith<$Res> {
  factory _$$_InitStateCopyWith(
          _$_InitState value, $Res Function(_$_InitState) then) =
      __$$_InitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestRankData data});

  @override
  $ContestRankDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitStateCopyWithImpl<$Res>
    extends _$ContestRankStateCopyWithImpl<$Res, _$_InitState>
    implements _$$_InitStateCopyWith<$Res> {
  __$$_InitStateCopyWithImpl(
      _$_InitState _value, $Res Function(_$_InitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_InitState(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ContestRankData,
    ));
  }
}

/// @nodoc

class _$_InitState implements _InitState {
  const _$_InitState(this.data);

  @override
  final ContestRankData data;

  @override
  String toString() {
    return 'ContestRankState.init(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitStateCopyWith<_$_InitState> get copyWith =>
      __$$_InitStateCopyWithImpl<_$_InitState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContestRankData data) init,
    required TResult Function(ContestRankData data) loading,
    required TResult Function(ContestRankData data, bool isMyRank) waiting,
    required TResult Function(ContestRankData data) success,
    required TResult Function(ContestRankData data, String errorMessage) error,
  }) {
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestRankData data)? init,
    TResult? Function(ContestRankData data)? loading,
    TResult? Function(ContestRankData data, bool isMyRank)? waiting,
    TResult? Function(ContestRankData data)? success,
    TResult? Function(ContestRankData data, String errorMessage)? error,
  }) {
    return init?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestRankData data)? init,
    TResult Function(ContestRankData data)? loading,
    TResult Function(ContestRankData data, bool isMyRank)? waiting,
    TResult Function(ContestRankData data)? success,
    TResult Function(ContestRankData data, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) init,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_WaitingState value) waiting,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_WaitingState value)? waiting,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_WaitingState value)? waiting,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitState implements ContestRankState {
  const factory _InitState(final ContestRankData data) = _$_InitState;

  @override
  ContestRankData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitStateCopyWith<_$_InitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res>
    implements $ContestRankStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestRankData data});

  @override
  $ContestRankDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$ContestRankStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_LoadingState(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ContestRankData,
    ));
  }
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState(this.data);

  @override
  final ContestRankData data;

  @override
  String toString() {
    return 'ContestRankState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingStateCopyWith<_$_LoadingState> get copyWith =>
      __$$_LoadingStateCopyWithImpl<_$_LoadingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContestRankData data) init,
    required TResult Function(ContestRankData data) loading,
    required TResult Function(ContestRankData data, bool isMyRank) waiting,
    required TResult Function(ContestRankData data) success,
    required TResult Function(ContestRankData data, String errorMessage) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestRankData data)? init,
    TResult? Function(ContestRankData data)? loading,
    TResult? Function(ContestRankData data, bool isMyRank)? waiting,
    TResult? Function(ContestRankData data)? success,
    TResult? Function(ContestRankData data, String errorMessage)? error,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestRankData data)? init,
    TResult Function(ContestRankData data)? loading,
    TResult Function(ContestRankData data, bool isMyRank)? waiting,
    TResult Function(ContestRankData data)? success,
    TResult Function(ContestRankData data, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) init,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_WaitingState value) waiting,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_WaitingState value)? waiting,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_WaitingState value)? waiting,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements ContestRankState {
  const factory _LoadingState(final ContestRankData data) = _$_LoadingState;

  @override
  ContestRankData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingStateCopyWith<_$_LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WaitingStateCopyWith<$Res>
    implements $ContestRankStateCopyWith<$Res> {
  factory _$$_WaitingStateCopyWith(
          _$_WaitingState value, $Res Function(_$_WaitingState) then) =
      __$$_WaitingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestRankData data, bool isMyRank});

  @override
  $ContestRankDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_WaitingStateCopyWithImpl<$Res>
    extends _$ContestRankStateCopyWithImpl<$Res, _$_WaitingState>
    implements _$$_WaitingStateCopyWith<$Res> {
  __$$_WaitingStateCopyWithImpl(
      _$_WaitingState _value, $Res Function(_$_WaitingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isMyRank = null,
  }) {
    return _then(_$_WaitingState(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ContestRankData,
      isMyRank: null == isMyRank
          ? _value.isMyRank
          : isMyRank // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WaitingState implements _WaitingState {
  const _$_WaitingState(this.data, {required this.isMyRank});

  @override
  final ContestRankData data;
  @override
  final bool isMyRank;

  @override
  String toString() {
    return 'ContestRankState.waiting(data: $data, isMyRank: $isMyRank)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WaitingState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isMyRank, isMyRank) ||
                other.isMyRank == isMyRank));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, isMyRank);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WaitingStateCopyWith<_$_WaitingState> get copyWith =>
      __$$_WaitingStateCopyWithImpl<_$_WaitingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContestRankData data) init,
    required TResult Function(ContestRankData data) loading,
    required TResult Function(ContestRankData data, bool isMyRank) waiting,
    required TResult Function(ContestRankData data) success,
    required TResult Function(ContestRankData data, String errorMessage) error,
  }) {
    return waiting(data, isMyRank);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestRankData data)? init,
    TResult? Function(ContestRankData data)? loading,
    TResult? Function(ContestRankData data, bool isMyRank)? waiting,
    TResult? Function(ContestRankData data)? success,
    TResult? Function(ContestRankData data, String errorMessage)? error,
  }) {
    return waiting?.call(data, isMyRank);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestRankData data)? init,
    TResult Function(ContestRankData data)? loading,
    TResult Function(ContestRankData data, bool isMyRank)? waiting,
    TResult Function(ContestRankData data)? success,
    TResult Function(ContestRankData data, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(data, isMyRank);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) init,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_WaitingState value) waiting,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_WaitingState value)? waiting,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_WaitingState value)? waiting,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class _WaitingState implements ContestRankState {
  const factory _WaitingState(final ContestRankData data,
      {required final bool isMyRank}) = _$_WaitingState;

  @override
  ContestRankData get data;
  bool get isMyRank;
  @override
  @JsonKey(ignore: true)
  _$$_WaitingStateCopyWith<_$_WaitingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessStateCopyWith<$Res>
    implements $ContestRankStateCopyWith<$Res> {
  factory _$$_SuccessStateCopyWith(
          _$_SuccessState value, $Res Function(_$_SuccessState) then) =
      __$$_SuccessStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestRankData data});

  @override
  $ContestRankDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SuccessStateCopyWithImpl<$Res>
    extends _$ContestRankStateCopyWithImpl<$Res, _$_SuccessState>
    implements _$$_SuccessStateCopyWith<$Res> {
  __$$_SuccessStateCopyWithImpl(
      _$_SuccessState _value, $Res Function(_$_SuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SuccessState(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ContestRankData,
    ));
  }
}

/// @nodoc

class _$_SuccessState implements _SuccessState {
  const _$_SuccessState(this.data);

  @override
  final ContestRankData data;

  @override
  String toString() {
    return 'ContestRankState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessStateCopyWith<_$_SuccessState> get copyWith =>
      __$$_SuccessStateCopyWithImpl<_$_SuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContestRankData data) init,
    required TResult Function(ContestRankData data) loading,
    required TResult Function(ContestRankData data, bool isMyRank) waiting,
    required TResult Function(ContestRankData data) success,
    required TResult Function(ContestRankData data, String errorMessage) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestRankData data)? init,
    TResult? Function(ContestRankData data)? loading,
    TResult? Function(ContestRankData data, bool isMyRank)? waiting,
    TResult? Function(ContestRankData data)? success,
    TResult? Function(ContestRankData data, String errorMessage)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestRankData data)? init,
    TResult Function(ContestRankData data)? loading,
    TResult Function(ContestRankData data, bool isMyRank)? waiting,
    TResult Function(ContestRankData data)? success,
    TResult Function(ContestRankData data, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) init,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_WaitingState value) waiting,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_WaitingState value)? waiting,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_WaitingState value)? waiting,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements ContestRankState {
  const factory _SuccessState(final ContestRankData data) = _$_SuccessState;

  @override
  ContestRankData get data;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessStateCopyWith<_$_SuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res>
    implements $ContestRankStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestRankData data, String errorMessage});

  @override
  $ContestRankDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$ContestRankStateCopyWithImpl<$Res, _$_ErrorState>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_ErrorState(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ContestRankData,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorState implements _ErrorState {
  const _$_ErrorState(this.data, {required this.errorMessage});

  @override
  final ContestRankData data;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ContestRankState.error(data: $data, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContestRankData data) init,
    required TResult Function(ContestRankData data) loading,
    required TResult Function(ContestRankData data, bool isMyRank) waiting,
    required TResult Function(ContestRankData data) success,
    required TResult Function(ContestRankData data, String errorMessage) error,
  }) {
    return error(data, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestRankData data)? init,
    TResult? Function(ContestRankData data)? loading,
    TResult? Function(ContestRankData data, bool isMyRank)? waiting,
    TResult? Function(ContestRankData data)? success,
    TResult? Function(ContestRankData data, String errorMessage)? error,
  }) {
    return error?.call(data, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestRankData data)? init,
    TResult Function(ContestRankData data)? loading,
    TResult Function(ContestRankData data, bool isMyRank)? waiting,
    TResult Function(ContestRankData data)? success,
    TResult Function(ContestRankData data, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) init,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_WaitingState value) waiting,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_WaitingState value)? waiting,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_WaitingState value)? waiting,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements ContestRankState {
  const factory _ErrorState(final ContestRankData data,
      {required final String errorMessage}) = _$_ErrorState;

  @override
  ContestRankData get data;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
