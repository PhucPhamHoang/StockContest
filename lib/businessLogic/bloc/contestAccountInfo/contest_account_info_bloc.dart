import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled/data/model/ContestAccountInfoModel.dart';
import 'package:untitled/data/model/NotificationInfoModel.dart';
import 'package:untitled/data/repository/ContestAccountInfoRepository.dart';
import 'package:untitled/utils/service/DebugService.dart';

part 'contest_account_info_event.dart';
part 'contest_account_info_state.dart';
part 'contest_account_info_bloc.freezed.dart';

class ContestAccountInfoBloc extends Bloc<ContestAccountInfoEvent, ContestAccountInfoState> {
  ContestAccountInfoRepository _contestAccountInfoRepository;

  ContestAccountInfoBloc(this._contestAccountInfoRepository) : super(const _InitState(_$_ContestAccountInfoData())) {
    on<_FetchEvent>((event, emit) async {
      try {
        emit(_LoadingState(state.data));
          List<ContestAccountInfoModel> listData = await _contestAccountInfoRepository.getListContestAccounte();
          emit(
            _SuccessState(
              state.data.copyWith(
                listData: listData,
              ),
            ),
          );
      } catch (e) {
        DebugService.printConsole('catch $e');
        emit(_ErrorState(state.data, errorMessage: e.toString()));
      }
    });
  }
}
