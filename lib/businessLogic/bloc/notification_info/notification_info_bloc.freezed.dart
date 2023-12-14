// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationInfoEvent {
  String? get userid => throw _privateConstructorUsedError;
  int? get pageNum => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userid, int? pageNum)
        loadSeenNotification,
    required TResult Function(String? userid, int? pageNum)
        loadUnseenNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userid, int? pageNum)? loadSeenNotification,
    TResult? Function(String? userid, int? pageNum)? loadUnseenNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userid, int? pageNum)? loadSeenNotification,
    TResult Function(String? userid, int? pageNum)? loadUnseenNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSeenNotificationEvent value)
        loadSeenNotification,
    required TResult Function(_FetchUnseenNotificationEvent value)
        loadUnseenNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSeenNotificationEvent value)? loadSeenNotification,
    TResult? Function(_FetchUnseenNotificationEvent value)?
        loadUnseenNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSeenNotificationEvent value)? loadSeenNotification,
    TResult Function(_FetchUnseenNotificationEvent value)?
        loadUnseenNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationInfoEventCopyWith<NotificationInfoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationInfoEventCopyWith<$Res> {
  factory $NotificationInfoEventCopyWith(NotificationInfoEvent value,
          $Res Function(NotificationInfoEvent) then) =
      _$NotificationInfoEventCopyWithImpl<$Res, NotificationInfoEvent>;
  @useResult
  $Res call({String? userid, int? pageNum});
}

/// @nodoc
class _$NotificationInfoEventCopyWithImpl<$Res,
        $Val extends NotificationInfoEvent>
    implements $NotificationInfoEventCopyWith<$Res> {
  _$NotificationInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userid = freezed,
    Object? pageNum = freezed,
  }) {
    return _then(_value.copyWith(
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String?,
      pageNum: freezed == pageNum
          ? _value.pageNum
          : pageNum // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchSeenNotificationEventCopyWith<$Res>
    implements $NotificationInfoEventCopyWith<$Res> {
  factory _$$_FetchSeenNotificationEventCopyWith(
          _$_FetchSeenNotificationEvent value,
          $Res Function(_$_FetchSeenNotificationEvent) then) =
      __$$_FetchSeenNotificationEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userid, int? pageNum});
}

/// @nodoc
class __$$_FetchSeenNotificationEventCopyWithImpl<$Res>
    extends _$NotificationInfoEventCopyWithImpl<$Res,
        _$_FetchSeenNotificationEvent>
    implements _$$_FetchSeenNotificationEventCopyWith<$Res> {
  __$$_FetchSeenNotificationEventCopyWithImpl(
      _$_FetchSeenNotificationEvent _value,
      $Res Function(_$_FetchSeenNotificationEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userid = freezed,
    Object? pageNum = freezed,
  }) {
    return _then(_$_FetchSeenNotificationEvent(
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String?,
      pageNum: freezed == pageNum
          ? _value.pageNum
          : pageNum // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_FetchSeenNotificationEvent implements _FetchSeenNotificationEvent {
  const _$_FetchSeenNotificationEvent({this.userid, this.pageNum});

  @override
  final String? userid;
  @override
  final int? pageNum;

  @override
  String toString() {
    return 'NotificationInfoEvent.loadSeenNotification(userid: $userid, pageNum: $pageNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchSeenNotificationEvent &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.pageNum, pageNum) || other.pageNum == pageNum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userid, pageNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchSeenNotificationEventCopyWith<_$_FetchSeenNotificationEvent>
      get copyWith => __$$_FetchSeenNotificationEventCopyWithImpl<
          _$_FetchSeenNotificationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userid, int? pageNum)
        loadSeenNotification,
    required TResult Function(String? userid, int? pageNum)
        loadUnseenNotification,
  }) {
    return loadSeenNotification(userid, pageNum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userid, int? pageNum)? loadSeenNotification,
    TResult? Function(String? userid, int? pageNum)? loadUnseenNotification,
  }) {
    return loadSeenNotification?.call(userid, pageNum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userid, int? pageNum)? loadSeenNotification,
    TResult Function(String? userid, int? pageNum)? loadUnseenNotification,
    required TResult orElse(),
  }) {
    if (loadSeenNotification != null) {
      return loadSeenNotification(userid, pageNum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSeenNotificationEvent value)
        loadSeenNotification,
    required TResult Function(_FetchUnseenNotificationEvent value)
        loadUnseenNotification,
  }) {
    return loadSeenNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSeenNotificationEvent value)? loadSeenNotification,
    TResult? Function(_FetchUnseenNotificationEvent value)?
        loadUnseenNotification,
  }) {
    return loadSeenNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSeenNotificationEvent value)? loadSeenNotification,
    TResult Function(_FetchUnseenNotificationEvent value)?
        loadUnseenNotification,
    required TResult orElse(),
  }) {
    if (loadSeenNotification != null) {
      return loadSeenNotification(this);
    }
    return orElse();
  }
}

abstract class _FetchSeenNotificationEvent implements NotificationInfoEvent {
  const factory _FetchSeenNotificationEvent(
      {final String? userid,
      final int? pageNum}) = _$_FetchSeenNotificationEvent;

  @override
  String? get userid;
  @override
  int? get pageNum;
  @override
  @JsonKey(ignore: true)
  _$$_FetchSeenNotificationEventCopyWith<_$_FetchSeenNotificationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchUnseenNotificationEventCopyWith<$Res>
    implements $NotificationInfoEventCopyWith<$Res> {
  factory _$$_FetchUnseenNotificationEventCopyWith(
          _$_FetchUnseenNotificationEvent value,
          $Res Function(_$_FetchUnseenNotificationEvent) then) =
      __$$_FetchUnseenNotificationEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userid, int? pageNum});
}

/// @nodoc
class __$$_FetchUnseenNotificationEventCopyWithImpl<$Res>
    extends _$NotificationInfoEventCopyWithImpl<$Res,
        _$_FetchUnseenNotificationEvent>
    implements _$$_FetchUnseenNotificationEventCopyWith<$Res> {
  __$$_FetchUnseenNotificationEventCopyWithImpl(
      _$_FetchUnseenNotificationEvent _value,
      $Res Function(_$_FetchUnseenNotificationEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userid = freezed,
    Object? pageNum = freezed,
  }) {
    return _then(_$_FetchUnseenNotificationEvent(
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String?,
      pageNum: freezed == pageNum
          ? _value.pageNum
          : pageNum // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_FetchUnseenNotificationEvent implements _FetchUnseenNotificationEvent {
  const _$_FetchUnseenNotificationEvent({this.userid, this.pageNum});

  @override
  final String? userid;
  @override
  final int? pageNum;

  @override
  String toString() {
    return 'NotificationInfoEvent.loadUnseenNotification(userid: $userid, pageNum: $pageNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchUnseenNotificationEvent &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.pageNum, pageNum) || other.pageNum == pageNum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userid, pageNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchUnseenNotificationEventCopyWith<_$_FetchUnseenNotificationEvent>
      get copyWith => __$$_FetchUnseenNotificationEventCopyWithImpl<
          _$_FetchUnseenNotificationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userid, int? pageNum)
        loadSeenNotification,
    required TResult Function(String? userid, int? pageNum)
        loadUnseenNotification,
  }) {
    return loadUnseenNotification(userid, pageNum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userid, int? pageNum)? loadSeenNotification,
    TResult? Function(String? userid, int? pageNum)? loadUnseenNotification,
  }) {
    return loadUnseenNotification?.call(userid, pageNum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userid, int? pageNum)? loadSeenNotification,
    TResult Function(String? userid, int? pageNum)? loadUnseenNotification,
    required TResult orElse(),
  }) {
    if (loadUnseenNotification != null) {
      return loadUnseenNotification(userid, pageNum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSeenNotificationEvent value)
        loadSeenNotification,
    required TResult Function(_FetchUnseenNotificationEvent value)
        loadUnseenNotification,
  }) {
    return loadUnseenNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSeenNotificationEvent value)? loadSeenNotification,
    TResult? Function(_FetchUnseenNotificationEvent value)?
        loadUnseenNotification,
  }) {
    return loadUnseenNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSeenNotificationEvent value)? loadSeenNotification,
    TResult Function(_FetchUnseenNotificationEvent value)?
        loadUnseenNotification,
    required TResult orElse(),
  }) {
    if (loadUnseenNotification != null) {
      return loadUnseenNotification(this);
    }
    return orElse();
  }
}

abstract class _FetchUnseenNotificationEvent implements NotificationInfoEvent {
  const factory _FetchUnseenNotificationEvent(
      {final String? userid,
      final int? pageNum}) = _$_FetchUnseenNotificationEvent;

  @override
  String? get userid;
  @override
  int? get pageNum;
  @override
  @JsonKey(ignore: true)
  _$$_FetchUnseenNotificationEventCopyWith<_$_FetchUnseenNotificationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationInfoData {
  List<NotificationInfoModel>? get listData =>
      throw _privateConstructorUsedError;
  List<NotificationInfoModel>? get notificationSeenList =>
      throw _privateConstructorUsedError;
  List<NotificationInfoModel>? get notificationUnseenList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationInfoDataCopyWith<NotificationInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationInfoDataCopyWith<$Res> {
  factory $NotificationInfoDataCopyWith(NotificationInfoData value,
          $Res Function(NotificationInfoData) then) =
      _$NotificationInfoDataCopyWithImpl<$Res, NotificationInfoData>;
  @useResult
  $Res call(
      {List<NotificationInfoModel>? listData,
      List<NotificationInfoModel>? notificationSeenList,
      List<NotificationInfoModel>? notificationUnseenList});
}

/// @nodoc
class _$NotificationInfoDataCopyWithImpl<$Res,
        $Val extends NotificationInfoData>
    implements $NotificationInfoDataCopyWith<$Res> {
  _$NotificationInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listData = freezed,
    Object? notificationSeenList = freezed,
    Object? notificationUnseenList = freezed,
  }) {
    return _then(_value.copyWith(
      listData: freezed == listData
          ? _value.listData
          : listData // ignore: cast_nullable_to_non_nullable
              as List<NotificationInfoModel>?,
      notificationSeenList: freezed == notificationSeenList
          ? _value.notificationSeenList
          : notificationSeenList // ignore: cast_nullable_to_non_nullable
              as List<NotificationInfoModel>?,
      notificationUnseenList: freezed == notificationUnseenList
          ? _value.notificationUnseenList
          : notificationUnseenList // ignore: cast_nullable_to_non_nullable
              as List<NotificationInfoModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationInfoDataCopyWith<$Res>
    implements $NotificationInfoDataCopyWith<$Res> {
  factory _$$_NotificationInfoDataCopyWith(_$_NotificationInfoData value,
          $Res Function(_$_NotificationInfoData) then) =
      __$$_NotificationInfoDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NotificationInfoModel>? listData,
      List<NotificationInfoModel>? notificationSeenList,
      List<NotificationInfoModel>? notificationUnseenList});
}

/// @nodoc
class __$$_NotificationInfoDataCopyWithImpl<$Res>
    extends _$NotificationInfoDataCopyWithImpl<$Res, _$_NotificationInfoData>
    implements _$$_NotificationInfoDataCopyWith<$Res> {
  __$$_NotificationInfoDataCopyWithImpl(_$_NotificationInfoData _value,
      $Res Function(_$_NotificationInfoData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listData = freezed,
    Object? notificationSeenList = freezed,
    Object? notificationUnseenList = freezed,
  }) {
    return _then(_$_NotificationInfoData(
      listData: freezed == listData
          ? _value._listData
          : listData // ignore: cast_nullable_to_non_nullable
              as List<NotificationInfoModel>?,
      notificationSeenList: freezed == notificationSeenList
          ? _value._notificationSeenList
          : notificationSeenList // ignore: cast_nullable_to_non_nullable
              as List<NotificationInfoModel>?,
      notificationUnseenList: freezed == notificationUnseenList
          ? _value._notificationUnseenList
          : notificationUnseenList // ignore: cast_nullable_to_non_nullable
              as List<NotificationInfoModel>?,
    ));
  }
}

/// @nodoc

class _$_NotificationInfoData implements _NotificationInfoData {
  const _$_NotificationInfoData(
      {final List<NotificationInfoModel>? listData,
      final List<NotificationInfoModel>? notificationSeenList,
      final List<NotificationInfoModel>? notificationUnseenList})
      : _listData = listData,
        _notificationSeenList = notificationSeenList,
        _notificationUnseenList = notificationUnseenList;

  final List<NotificationInfoModel>? _listData;
  @override
  List<NotificationInfoModel>? get listData {
    final value = _listData;
    if (value == null) return null;
    if (_listData is EqualUnmodifiableListView) return _listData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<NotificationInfoModel>? _notificationSeenList;
  @override
  List<NotificationInfoModel>? get notificationSeenList {
    final value = _notificationSeenList;
    if (value == null) return null;
    if (_notificationSeenList is EqualUnmodifiableListView)
      return _notificationSeenList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<NotificationInfoModel>? _notificationUnseenList;
  @override
  List<NotificationInfoModel>? get notificationUnseenList {
    final value = _notificationUnseenList;
    if (value == null) return null;
    if (_notificationUnseenList is EqualUnmodifiableListView)
      return _notificationUnseenList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NotificationInfoData(listData: $listData, notificationSeenList: $notificationSeenList, notificationUnseenList: $notificationUnseenList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationInfoData &&
            const DeepCollectionEquality().equals(other._listData, _listData) &&
            const DeepCollectionEquality()
                .equals(other._notificationSeenList, _notificationSeenList) &&
            const DeepCollectionEquality().equals(
                other._notificationUnseenList, _notificationUnseenList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listData),
      const DeepCollectionEquality().hash(_notificationSeenList),
      const DeepCollectionEquality().hash(_notificationUnseenList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationInfoDataCopyWith<_$_NotificationInfoData> get copyWith =>
      __$$_NotificationInfoDataCopyWithImpl<_$_NotificationInfoData>(
          this, _$identity);
}

abstract class _NotificationInfoData implements NotificationInfoData {
  const factory _NotificationInfoData(
          {final List<NotificationInfoModel>? listData,
          final List<NotificationInfoModel>? notificationSeenList,
          final List<NotificationInfoModel>? notificationUnseenList}) =
      _$_NotificationInfoData;

  @override
  List<NotificationInfoModel>? get listData;
  @override
  List<NotificationInfoModel>? get notificationSeenList;
  @override
  List<NotificationInfoModel>? get notificationUnseenList;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationInfoDataCopyWith<_$_NotificationInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationInfoState {
  NotificationInfoData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotificationInfoData data) init,
    required TResult Function(NotificationInfoData data) loading,
    required TResult Function(NotificationInfoData data) success,
    required TResult Function(NotificationInfoData data, String errorMessage)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NotificationInfoData data)? init,
    TResult? Function(NotificationInfoData data)? loading,
    TResult? Function(NotificationInfoData data)? success,
    TResult? Function(NotificationInfoData data, String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationInfoData data)? init,
    TResult Function(NotificationInfoData data)? loading,
    TResult Function(NotificationInfoData data)? success,
    TResult Function(NotificationInfoData data, String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) init,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationInfoStateCopyWith<NotificationInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationInfoStateCopyWith<$Res> {
  factory $NotificationInfoStateCopyWith(NotificationInfoState value,
          $Res Function(NotificationInfoState) then) =
      _$NotificationInfoStateCopyWithImpl<$Res, NotificationInfoState>;
  @useResult
  $Res call({NotificationInfoData data});

  $NotificationInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class _$NotificationInfoStateCopyWithImpl<$Res,
        $Val extends NotificationInfoState>
    implements $NotificationInfoStateCopyWith<$Res> {
  _$NotificationInfoStateCopyWithImpl(this._value, this._then);

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
              as NotificationInfoData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NotificationInfoDataCopyWith<$Res> get data {
    return $NotificationInfoDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitStateCopyWith<$Res>
    implements $NotificationInfoStateCopyWith<$Res> {
  factory _$$_InitStateCopyWith(
          _$_InitState value, $Res Function(_$_InitState) then) =
      __$$_InitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NotificationInfoData data});

  @override
  $NotificationInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitStateCopyWithImpl<$Res>
    extends _$NotificationInfoStateCopyWithImpl<$Res, _$_InitState>
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
              as NotificationInfoData,
    ));
  }
}

/// @nodoc

class _$_InitState implements _InitState {
  const _$_InitState(this.data);

  @override
  final NotificationInfoData data;

  @override
  String toString() {
    return 'NotificationInfoState.init(data: $data)';
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
    required TResult Function(NotificationInfoData data) init,
    required TResult Function(NotificationInfoData data) loading,
    required TResult Function(NotificationInfoData data) success,
    required TResult Function(NotificationInfoData data, String errorMessage)
        error,
  }) {
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NotificationInfoData data)? init,
    TResult? Function(NotificationInfoData data)? loading,
    TResult? Function(NotificationInfoData data)? success,
    TResult? Function(NotificationInfoData data, String errorMessage)? error,
  }) {
    return init?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationInfoData data)? init,
    TResult Function(NotificationInfoData data)? loading,
    TResult Function(NotificationInfoData data)? success,
    TResult Function(NotificationInfoData data, String errorMessage)? error,
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

abstract class _InitState implements NotificationInfoState {
  const factory _InitState(final NotificationInfoData data) = _$_InitState;

  @override
  NotificationInfoData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitStateCopyWith<_$_InitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res>
    implements $NotificationInfoStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NotificationInfoData data});

  @override
  $NotificationInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$NotificationInfoStateCopyWithImpl<$Res, _$_LoadingState>
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
              as NotificationInfoData,
    ));
  }
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState(this.data);

  @override
  final NotificationInfoData data;

  @override
  String toString() {
    return 'NotificationInfoState.loading(data: $data)';
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
    required TResult Function(NotificationInfoData data) init,
    required TResult Function(NotificationInfoData data) loading,
    required TResult Function(NotificationInfoData data) success,
    required TResult Function(NotificationInfoData data, String errorMessage)
        error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NotificationInfoData data)? init,
    TResult? Function(NotificationInfoData data)? loading,
    TResult? Function(NotificationInfoData data)? success,
    TResult? Function(NotificationInfoData data, String errorMessage)? error,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationInfoData data)? init,
    TResult Function(NotificationInfoData data)? loading,
    TResult Function(NotificationInfoData data)? success,
    TResult Function(NotificationInfoData data, String errorMessage)? error,
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

abstract class _LoadingState implements NotificationInfoState {
  const factory _LoadingState(final NotificationInfoData data) =
      _$_LoadingState;

  @override
  NotificationInfoData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingStateCopyWith<_$_LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessStateCopyWith<$Res>
    implements $NotificationInfoStateCopyWith<$Res> {
  factory _$$_SuccessStateCopyWith(
          _$_SuccessState value, $Res Function(_$_SuccessState) then) =
      __$$_SuccessStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NotificationInfoData data});

  @override
  $NotificationInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SuccessStateCopyWithImpl<$Res>
    extends _$NotificationInfoStateCopyWithImpl<$Res, _$_SuccessState>
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
              as NotificationInfoData,
    ));
  }
}

/// @nodoc

class _$_SuccessState implements _SuccessState {
  const _$_SuccessState(this.data);

  @override
  final NotificationInfoData data;

  @override
  String toString() {
    return 'NotificationInfoState.success(data: $data)';
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
    required TResult Function(NotificationInfoData data) init,
    required TResult Function(NotificationInfoData data) loading,
    required TResult Function(NotificationInfoData data) success,
    required TResult Function(NotificationInfoData data, String errorMessage)
        error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NotificationInfoData data)? init,
    TResult? Function(NotificationInfoData data)? loading,
    TResult? Function(NotificationInfoData data)? success,
    TResult? Function(NotificationInfoData data, String errorMessage)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationInfoData data)? init,
    TResult Function(NotificationInfoData data)? loading,
    TResult Function(NotificationInfoData data)? success,
    TResult Function(NotificationInfoData data, String errorMessage)? error,
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

abstract class _SuccessState implements NotificationInfoState {
  const factory _SuccessState(final NotificationInfoData data) =
      _$_SuccessState;

  @override
  NotificationInfoData get data;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessStateCopyWith<_$_SuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res>
    implements $NotificationInfoStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NotificationInfoData data, String errorMessage});

  @override
  $NotificationInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$NotificationInfoStateCopyWithImpl<$Res, _$_ErrorState>
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
              as NotificationInfoData,
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
  final NotificationInfoData data;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'NotificationInfoState.error(data: $data, errorMessage: $errorMessage)';
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
    required TResult Function(NotificationInfoData data) init,
    required TResult Function(NotificationInfoData data) loading,
    required TResult Function(NotificationInfoData data) success,
    required TResult Function(NotificationInfoData data, String errorMessage)
        error,
  }) {
    return error(data, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NotificationInfoData data)? init,
    TResult? Function(NotificationInfoData data)? loading,
    TResult? Function(NotificationInfoData data)? success,
    TResult? Function(NotificationInfoData data, String errorMessage)? error,
  }) {
    return error?.call(data, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationInfoData data)? init,
    TResult Function(NotificationInfoData data)? loading,
    TResult Function(NotificationInfoData data)? success,
    TResult Function(NotificationInfoData data, String errorMessage)? error,
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

abstract class _ErrorState implements NotificationInfoState {
  const factory _ErrorState(final NotificationInfoData data,
      {required final String errorMessage}) = _$_ErrorState;

  @override
  NotificationInfoData get data;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
