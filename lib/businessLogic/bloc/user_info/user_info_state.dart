part of 'user_info_bloc.dart';

@freezed
class UserInfoData with _$UserInfoData {
  const factory UserInfoData({
    UserInfoModel? data,
  }) = _UserInfoData;
}

@freezed
class UserInfoState with _$UserInfoState {
  const factory UserInfoState.init(UserInfoData data) = _InitState;
  const factory UserInfoState.loading() = _LoadingState;
  const factory UserInfoState.success(UserInfoModel userData) = _SuccessState;
  const factory UserInfoState.changeSuccess() = _ChangeSuccessState;
  const factory UserInfoState.error(
      {required String errorMessage}) = _ErrorState;
  const factory UserInfoState.changeError({required String errorMessage}) = _ChangeErrorState;
}