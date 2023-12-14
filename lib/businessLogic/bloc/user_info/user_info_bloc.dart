import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled/data/dto/userInfoDto.dart';
import 'package:untitled/data/model/DefaultResponseModel.dart';
import 'package:untitled/data/model/UserInfoModel.dart';
import 'package:untitled/data/repository/UserRepository.dart';
import 'package:untitled/utils/service/DebugService.dart';

part 'user_info_event.dart';
part 'user_info_state.dart';
part 'user_info_bloc.freezed.dart';

class UserInfoBloc extends Bloc<UserInfoEvent, UserInfoState> {
  final UserRepository _userInfoRepository;
  //UserInfoModel? loggedUserinfo;
  UserInfoModel? userInfoModel;
  UserInfoBloc(this._userInfoRepository)
      : super(const _InitState(_UserInfoData())) {
    on<_FetchEvent>((event, emit) async {
      try {
        print("vaobloc");
        emit(const _LoadingState());
        UserInfoModel data = await _userInfoRepository.getUserInfo();
        userInfoModel = data;
        print("CODATA ${data}");
       // userData = data;
        emit(
          _SuccessState(
            data
          ),
        );
      } catch (e) {
        DebugService.printConsole('catch $e');
        emit(_ErrorState(errorMessage: e.toString()));
      }
    });
    on<_ChangeEvent>((event, emit) async {
      try {
        emit(_LoadingState());
       await _userInfoRepository.changeUserInfo(data: event.data);
        emit(
          _ChangeSuccessState(),
        );
      } catch (e) {
        DebugService.printConsole('catch $e');
        emit(_ChangeErrorState(errorMessage: e.toString()));
      }
    });
    on<_ResetEvent>((event, emit) async {
      emit(_LoadingState());
      emit(_SuccessState(userInfoModel!));
    });
  }
}
