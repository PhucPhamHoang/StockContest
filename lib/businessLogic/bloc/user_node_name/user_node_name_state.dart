part of 'user_node_name_bloc.dart';

@freezed
class UserNodeNameData with _$UserNodeNameData{
  const factory UserNodeNameData({
    List<UserNodeNameModel>? data,
  }) = _UserNodeNameData;
}

@freezed
class UserNodeNameState with _$UserNodeNameState {
  const factory UserNodeNameState.init() = _InitState;
  const factory UserNodeNameState.loading() = _LoadingState;
  const factory UserNodeNameState.success(List<UserNodeNameModel> data) = _SuccessState;
  const factory UserNodeNameState.error(
      {required String errorMessage}) = _ErrorState;
}