part of 'notification_info_bloc.dart';

@freezed
class NotificationInfoData with _$NotificationInfoData {
  const factory NotificationInfoData({
    List<NotificationInfoModel>? listData,
    List<NotificationInfoModel>? notificationSeenList,
    List<NotificationInfoModel>? notificationUnseenList,
  }) = _NotificationInfoData;
}

@freezed
class NotificationInfoState with _$NotificationInfoState {
  const factory NotificationInfoState.init(NotificationInfoData data) = _InitState;
  const factory NotificationInfoState.loading(NotificationInfoData data) = _LoadingState;
  const factory NotificationInfoState.success(NotificationInfoData data) = _SuccessState;
  const factory NotificationInfoState.error(NotificationInfoData data, {required String errorMessage}) = _ErrorState;
}

