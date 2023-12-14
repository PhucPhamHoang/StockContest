import 'package:untitled/data/model/ContestAccountInfoModel.dart';
import 'package:untitled/data/model/StockInfoModel.dart';
import 'package:untitled/utils/network/NetworkHelper.dart';
import 'package:untitled/utils/network/NetworkService.dart';
import 'package:untitled/utils/service/DebugService.dart';

class ContestAccountInfoRepository{
  String stockInfoUrl ='/authenapi/UserApi/getListChallengeAccountTradingOfUser';
  Future<List<ContestAccountInfoModel>> getListContestAccounte() async{
    final response = await NetworkService.sendRequest(
      requestType: RequestType.post,
      url: stockInfoUrl,
      body: {},
    );

    return NetworkHelper.filterResponse(
      callBack: (listJson) {
      return List<ContestAccountInfoModel>.from(
        listJson.map(
              (json) => ContestAccountInfoModel.fromJson(json),
        ),
      );
    },
      response: response,
      onFailureCallBackWithMessage: (errorType, msg, content) {
        DebugService.printConsole('errorType: $errorType');
        DebugService.printConsole('msg: $msg');
        throw '$msg';
      },
    );
  }
}