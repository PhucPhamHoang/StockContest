part of 'contest_account_info_bloc.dart';

@freezed
class ContestAccountInfoEvent with _$ContestAccountInfoEvent {
  const factory ContestAccountInfoEvent.fetch() = _FetchEvent;
}
