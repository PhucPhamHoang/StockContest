import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:untitled/data/model/DefaultResponseModel.dart';
import 'package:untitled/data/repository/StockOrderRepository.dart';
import 'package:untitled/data/static/enum/OrderContestType.dart';
import 'package:untitled/data/static/enum/OrderStockEnum.dart';
import 'package:untitled/utils/service/DebugService.dart';
part 'stock_order_event.dart';
part 'stock_order_state.dart';
part 'stock_order_bloc.freezed.dart';

class StockOrderBloc extends Bloc<StockOrderEvent, StockOrderState> {
  final StockOrderRepository _contestRepository;

  StockOrderBloc(this._contestRepository) : super(const _InitState()) {
    on<_BuyEvent>((event, emit) async {
      try {
        emit(const _LoadingState());
        DefaultResponseModel data = await _contestRepository.placeOrder(
          ticketCode: event.code,
          stocksymbol: event.symbol,
          orderPrice: event.price,
          orderQuantity: event.amount,
          type: OrderContestTypeEnum.buy,
          orderType: event.type,
        );
        if (data.result == 'success') {
          emit(
            _SuccessState(),
          );
        }
      } catch (e) {
        DebugService.printConsole('catch $e');
        emit(_ErrorState(errorMessage: e.toString()));
      }
    });
    on<_SellEvent>((event, emit) async {
      try {
        emit(const _LoadingState());
        // throw (Exception('ERROR_FAIL'));
        DefaultResponseModel data = await _contestRepository.placeOrder(
          ticketCode: event.code,
          stocksymbol: event.symbol,
          orderPrice: event.price,
          orderQuantity: event.amount,
          type: OrderContestTypeEnum.sell,
          orderType: event.type,
        );
        if (data.result == 'success') {
          emit(
            _SuccessState(),
          );
        }
      } catch (e) {
        DebugService.printConsole('catch $e');
        emit(_ErrorState(errorMessage: e.toString()));
      }
    });
    on<_CancelEvent>((event, emit) async {
      try {
        emit(const _LoadingState());
        DefaultResponseModel data = await _contestRepository.cancelOrder(
          ticketCode: event.ticketCode,
          stocksymbol: event.stockSymbol,
          orderId: event.exchangeOrderId,
        );
        if (data.result == 'success') {
          emit(
            _SuccessState(),
          );
        }
      } catch (e) {
        DebugService.printConsole('catch $e');
        emit(_ErrorState(errorMessage: e.toString()));
      }
    });
  }
}
