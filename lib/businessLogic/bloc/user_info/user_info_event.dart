part of 'user_info_bloc.dart';

@freezed
class UserInfoEvent with _$UserInfoEvent {
  const factory UserInfoEvent.fetch() = _FetchEvent;
  const factory UserInfoEvent.change({
    required UserInfoDto data,
}) = _ChangeEvent;
  const factory UserInfoEvent.reset() = _ResetEvent;

}
