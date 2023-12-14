part of 'contest_order_bloc.dart';

@freezed
class ContestOrderEvent with _$ContestOrderEvent {
  const factory ContestOrderEvent.fetch({
    String? userid,
  }) = _FetchEvent;
}
