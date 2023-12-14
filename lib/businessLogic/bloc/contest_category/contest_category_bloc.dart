import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled/data/model/PorfolioStockModel.dart';
import 'package:untitled/data/repository/StockOrderRepository.dart';
import 'package:untitled/utils/service/DebugService.dart';

part 'contest_category_event.dart';
part 'contest_category_state.dart';
part 'contest_category_bloc.freezed.dart';

class ContestCategoryBloc
    extends Bloc<ContestCategoryEvent, ContestCategoryState> {
  final StockOrderRepository _contestOrderRepository;

  ContestCategoryBloc(this._contestOrderRepository)
      : super(const _InitState(ContestCategoryData())) {
    on<_FetchEvent>((event, emit) async {
      try {
        emit(_LoadingState(state.data));
          List<PortfolioStockModel> data = await _contestOrderRepository
              .getStockPortfolio(ticketCode: event.userid ?? '');
          double sum = data.fold(0,
              (previousValue, element) => previousValue + element.portfoliopct);
          emit(
            _SuccessState(
              state.data.copyWith(
                  totalCash: 0, totalRate: sum, contestCategory: data),
            ),
          );
      } catch (e) {
        DebugService.printConsole('catch $e');
        emit(_ErrorState(state.data, errorMessage: e.toString()));
      }
    });
  }
}
