part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.fetch(
      String userName,
      String passWord,
      bool isSavePassword,
      ) = _FetchEvent;
  const factory LoginEvent.logOut() = _LogOutEvent;
}
