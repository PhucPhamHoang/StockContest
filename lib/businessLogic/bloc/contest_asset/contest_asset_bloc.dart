import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled/data/model/PorfolioOverviewodel.dart';
import 'package:untitled/data/repository/StockOrderRepository.dart';
import 'package:untitled/utils/service/DebugService.dart';


part 'contest_asset_event.dart';
part 'contest_asset_state.dart';
part 'contest_asset_bloc.freezed.dart';

class ContestAssetBloc extends Bloc<ContestAssetEvent, ContestAssetState> {
  final StockOrderRepository _contestOrderRepository;

  ContestAssetBloc(this._contestOrderRepository)
      : super(const _InitState(ContestAssetData())) {
    on<_FetchEvent>((event, emit) async {
      try {
        emit(_LoadingState(state.data));

          PortfolioOverviewModel data = await _contestOrderRepository
              .getPortfolioOverview(ticketCode: event.userid ?? '');
          emit(_SuccessState(state.data.copyWith(contestAsset: data)));
      } catch (e) {
        DebugService.printConsole('catch $e');
        emit(_ErrorState(state.data, errorMessage: e.toString()));
      }
    });
  }
}
