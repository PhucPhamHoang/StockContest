import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled/data/model/StockInfoModel.dart';
import 'package:untitled/data/repository/StockOrderRepository.dart';
import 'package:untitled/utils/service/DebugService.dart';
part 'stock_info_event.dart';
part 'stock_info_state.dart';
part 'stock_info_bloc.freezed.dart';

class StockInfoBloc extends Bloc<StockInfoEvent, StockInfoState> {
  final StockOrderRepository _stockOrderRepository;

  StockInfoBloc(this._stockOrderRepository)
      :super(const _InitState(_StockInfoData())) {
    on<_FetchEvent>((event, emit) async {
      try {
        emit(_LoadingState(state.data));
        if (event.code != null) {
          StockInfoModel data = await _stockOrderRepository.getMarketPrice(
              stocksymbol: event.code ?? '');
          emit(
            _SuccessState(
              state.data.copyWith(
                stock: data,
              ),
            ),
          );
        }
      } catch (e) {
        DebugService.printConsole('catch $e');
        emit(_ErrorState(state.data, errorMessage: e.toString()));
      }
    });
    on<_ResetEvent>((event, emit) async {
      emit(_LoadingState(state.data));
      emit(_SuccessState(state.data));
    });
  }
}
