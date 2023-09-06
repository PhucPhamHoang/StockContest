import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled/data/model/LoginModel.dart';
import 'package:untitled/data/repository/LoginRepository.dart';
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
        String encodePassword =
        ValueRender.instance.getEncodeSha256(event.passWord);

        await _loginRepository.login(event.userName, encodePassword);
        emit(_SuccessState(state.data));
      }
      catch (e){
        DebugService.printConsole('catch $e');
        emit(_ErrorState(state.data, errorMessage: e.toString()));
      }
    });
  }
}
