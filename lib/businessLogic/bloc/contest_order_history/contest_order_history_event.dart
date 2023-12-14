part of 'contest_order_history_bloc.dart';

@freezed
class ContestOrderHistoryEvent with _$ContestOrderHistoryEvent {
  const factory ContestOrderHistoryEvent.fetch({
    String? userid,
  }) = _FetchEvent;
}
