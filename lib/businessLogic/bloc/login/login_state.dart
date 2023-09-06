part of 'login_bloc.dart';

@freezed
class LoginData with _$LoginData {
  const factory LoginData({
    @Default([]) List<LoginModel> loginData,
  }) = _LoginData;
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState.init(LoginData data) =
  _InitState;
  const factory LoginState.loading(LoginData data) =
  _LoadingState;
  const factory LoginState.success(LoginData data) =
  _SuccessState;
  const factory LoginState.error(LoginData data,
      {required String errorMessage}) = _ErrorState;
}
