import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled/data/model/UserNodeNameModel.dart';
import 'package:untitled/data/repository/UserRepository.dart';
import 'package:untitled/utils/service/DebugService.dart';

part 'user_node_name_event.dart';
part 'user_node_name_state.dart';
part 'user_node_name_bloc.freezed.dart';

class UserNodeNameBloc extends Bloc<UserNodeNameEvent, UserNodeNameState> {
  UserRepository _userInfoRepository;
  UserNodeNameBloc(this._userInfoRepository) : super(const _InitState()) {
    on<_FetchEvent>((event, emit) async{
      try {
        emit(_LoadingState());
        List<UserNodeNameModel> data = await _userInfoRepository.getUserNodeName();
        emit(
          _SuccessState(data),
        );
      } catch (e) {
        DebugService.printConsole('catch $e');
        emit(_ErrorState(errorMessage: e.toString()));
      }
    });
  }
}
