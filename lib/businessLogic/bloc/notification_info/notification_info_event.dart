part of 'notification_info_bloc.dart';

@freezed
class NotificationInfoEvent with _$NotificationInfoEvent {
  const factory NotificationInfoEvent.loadSeenNotification({
    String? userid,
    int? pageNum,
}) = _FetchSeenNotificationEvent;
  const factory NotificationInfoEvent.loadUnseenNotification({
    String? userid,
    int? pageNum,
}) = _FetchUnseenNotificationEvent;
}
