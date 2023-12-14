import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';
import 'package:untitled/data/model/ExchangeOrderModel.dart';
import 'package:untitled/data/repository/StockOrderRepository.dart';
import 'package:untitled/utils/service/DebugService.dart';
part 'contest_order_event.dart';
part 'contest_order_state.dart';
part 'contest_order_bloc.freezed.dart';

class ContestOrderBloc extends Bloc<ContestOrderEvent, ContestOrderState> {
  final StockOrderRepository _contestOrderRepository;
  ExchangeOrderModel? currentOrder;
  ContestOrderBloc(this._contestOrderRepository)
      : super(const _InitState(ContestOrderData())) {
    on<_FetchEvent>((event, emit) async {
      try {
        emit(_LoadingState(state.data));
          List<ExchangeOrderModel> data = await _contestOrderRepository
              .getExchangeOrder(userid: event.userid ?? '');
          if (currentOrder != null) {
            currentOrder = data.firstWhereOrNull((element) =>
                element.exchangeOrderId == currentOrder?.exchangeOrderId);
          }
          emit(
            _SuccessState(
              state.data.copyWith(contestOrders: data),
            ),
          );
      } catch (e) {
        DebugService.printConsole('catch $e');
        emit(_ErrorState(state.data, errorMessage: e.toString()));
      }
    });
  }
}
