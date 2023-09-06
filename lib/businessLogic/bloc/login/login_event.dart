part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.fetch(
      String userName,
      String passWord,
      ) = _FetchEvent;
}
