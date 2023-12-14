import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled/data/model/DefaultResponseModel.dart';
import 'package:untitled/data/model/LoginModel.dart';
import 'package:untitled/data/repository/LoginRepository.dart';
import 'package:untitled/data/static/ApplicationSetting.dart';
import 'package:untitled/data/static/enum/SharedPreferencesEnum.dart';
import 'package:untitled/utils/render/ValueRender.dart';
import 'package:untitled/utils/service/DebugService.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository _loginRepository;
  LoginBloc(this._loginRepository) : super(const _InitState(LoginData())) {
    on<_FetchEvent>((event, emit) async {
      try{
        emit(_LoadingState(state.data));
        ApplicationSetting.instance.sharedPreferences.setString(
          SharedPreferencesEnum.LAST_LOGIN_USERNAME.name,
          event.userName,
        );

        // Remove last password
        ApplicationSetting.instance.sharedPreferences.remove(
          SharedPreferencesEnum.LAST_LOGIN_PASSWORD.name,
        );
        String encodePassword =
        ValueRender.instance.getEncodeSha256(event.passWord);

        DefaultResponseModel response = await _loginRepository.login(event.userName, event.passWord);

        ApplicationSetting.instance.sharedPreferences.setBool(
          SharedPreferencesEnum.IS_SAVE_PASSWORD.name,
          event.isSavePassword,
        );

        if (event.isSavePassword) {
          ApplicationSetting.instance.sharedPreferences.setString(
            SharedPreferencesEnum.LAST_LOGIN_PASSWORD.name,
            event.passWord,
          );
        }
        if(response.result == 'success'){
          emit(_SuccessState(state.data));
        }
      }
      catch (e){
        DebugService.printConsole('catch $e');
        emit(_ErrorState(state.data, errorMessage: e.toString()));
        ApplicationSetting.instance.sharedPreferences.remove(
          SharedPreferencesEnum.LAST_LOGIN_PASSWORD.name,
        );
      }
    });
    on<_LogOutEvent>((event, emit) async {
      await _loginRepository.logOut();
       emit(LoginState.error(state.data, errorMessage: ""));
    });
  }
}
