import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled/data/model/ExchangeOrderModel.dart';
import 'package:untitled/data/repository/StockOrderRepository.dart';
import 'package:untitled/utils/service/DebugService.dart';
part 'contest_order_history_event.dart';
part 'contest_order_history_state.dart';
part 'contest_order_history_bloc.freezed.dart';

class ContestOrderHistoryBloc
    extends Bloc<ContestOrderHistoryEvent, ContestOrderHistoryState> {
  final StockOrderRepository _contestOrderRepository;

  ContestOrderHistoryBloc(this._contestOrderRepository)
      : super(const _InitState(ContestOrderHistoryData())) {
    on<_FetchEvent>((event, emit) async {
      try {
        emit(_LoadingState(state.data));
          List<ExchangeOrderModel> data =
              await _contestOrderRepository.getExchangeOrder(
                  userid: event.userid ?? '', isHistory: true);
          emit(
            _SuccessState(
              state.data.copyWith(contestOrderHistories: data),
            ),
          );
      } catch (e) {
        DebugService.printConsole('catch $e');
        emit(_ErrorState(state.data, errorMessage: e.toString()));
      }
    });
  }
}
