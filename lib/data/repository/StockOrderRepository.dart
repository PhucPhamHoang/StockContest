import 'package:untitled/data/model/DefaultResponseModel.dart';
import 'package:untitled/data/model/ExchangeOrderModel.dart';
import 'package:untitled/data/model/PorfolioOverviewodel.dart';
import 'package:untitled/data/model/PorfolioStockModel.dart';
import 'package:untitled/data/model/StockInfoModel.dart';
import 'package:untitled/data/static/enum/OrderContestType.dart';
import 'package:untitled/data/static/enum/OrderStockEnum.dart';
import 'package:untitled/data/static/extension/DatetimeExtension.dart';
import 'package:untitled/utils/network/NetworkHelper.dart';
import 'package:untitled/utils/network/NetworkService.dart';
import 'package:untitled/utils/service/DebugService.dart';

class StockOrderRepository{
  String _getMarketPriceUrl = '/authenapi/TradingApi/getMarketPrice';
  String _placeOrderUrl = '/authenapi/TradingApi/placeOrder';
  String _cancelOrderUrl = '/authenapi/TradingApi/cancelOrder';
  final String _getExchangeOrderUrl = '/authenapi/TradingApi/ExchangeOrderApi';
  final String _getStockPortfolioUrl = '/authenapi/TradingApi/getStockPortfolio';
  final String _getPortfolioOverviewUrl = '/authenapi/TradingApi/getPortfolioOverview';
  String _getStockTimeDetailUrl = '/authenapi/ChallengeApi/getChallengeDtoById';
  Future<StockInfoModel> getMarketPrice({required String stocksymbol}) async{
    final response = await NetworkService.sendRequest(
      requestType: RequestType.post,
      url: _getMarketPriceUrl,
      body: {
        "stocksymbol": stocksymbol,
      },
    );

    return NetworkHelper.filterResponse(
      callBack: (json) {
        //var res = json['content'];
        return StockInfoModel.fromJson(json);
      },
      response: response,
      onFailureCallBackWithMessage: (errorType, msg, content) {
        DebugService.printConsole('errorType: $errorType');
        DebugService.printConsole('msg: $msg');
        throw '$msg';
      },
    );
  }
  Future<DefaultResponseModel> placeOrder({
    required String ticketCode,
    required String stocksymbol,
    required double? orderPrice,
    required double orderQuantity,
    required OrderContestTypeEnum type,
    required OrderStockEnum orderType,
  }) async {
    final response = await NetworkService.sendRequest(
      requestType: RequestType.post,
      url: _placeOrderUrl,
      body: {
        "userid": ticketCode,
        "stocksymbol": stocksymbol,
        "orderquantity": orderQuantity,
        "orderside": type.code,
        "ordertype": orderType.title,
        if (orderPrice != null) "orderprice": orderPrice,
      },
    );

    return NetworkHelper.filterResponse(
      callBack: (json) {
        return DefaultResponseModel.fromJson(json);
      },
      response: response,
      onFailureCallBackWithMessage: (errorType, msg, content) {
        DebugService.printConsole('errorType: $errorType');
        DebugService.printConsole('msg: $msg');
        throw '$msg';
      },
    );
  }

  Future<DefaultResponseModel> cancelOrder({
    required String ticketCode,
    required String stocksymbol,
    required String orderId,
  }) async {
    final response = await NetworkService.sendRequest(
      requestType: RequestType.post,
      url: _cancelOrderUrl,
      body: {
        "ticketcode": ticketCode,
        "stocksymbol": stocksymbol,
        "exchangeorderid": orderId,
      },
    );

    return NetworkHelper.filterResponse(
      callBack: (json) {
        return DefaultResponseModel.fromJson(json);
      },
      response: response,
      onFailureCallBackWithMessage: (errorType, msg, content) {
        DebugService.printConsole('errorType: $errorType');
        DebugService.printConsole('msg: $msg');
        throw '$msg';
      },
    );
  }

  Future<List<PortfolioStockModel>> getStockPortfolio({
    required String ticketCode,
  }) async {
    final response = await NetworkService.sendRequest(
      requestType: RequestType.post,
      url: _getStockPortfolioUrl,
      body: {
        "userid": ticketCode,
        "recordPerPage":100,
        "pagenum": 1
      },
    );

    return NetworkHelper.filterResponse(
      callBack: (json) {
        var listJson = json['data'];
        return List<PortfolioStockModel>.from(
          listJson.map(
                (data) => PortfolioStockModel.fromJson(data),
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

  Future<PortfolioOverviewModel> getPortfolioOverview({
    required String ticketCode,
  }) async {
    final response = await NetworkService.sendRequest(
      requestType: RequestType.post,
      url: _getPortfolioOverviewUrl,
      body: {
        "userid": ticketCode,
      },
    );

    return NetworkHelper.filterResponse(
      callBack: (json) {
        return PortfolioOverviewModel.fromJson(json);
      },
      response: response,
      onFailureCallBackWithMessage: (errorType, msg, content) {
        DebugService.printConsole('errorType: $errorType');
        DebugService.printConsole('msg: $msg');
        throw '$msg';
      },
    );
  }
  Future<List<ExchangeOrderModel>> getExchangeOrder({
    required String userid,
    bool isHistory = false,
  }) async {
    final now = DateTime.now();
    final response = await NetworkService.sendRequest(
        requestType: RequestType.post,
        url: _getExchangeOrderUrl,
        body: {
          "userid": userid,
          "recordPerPage": 100,
          "pageNum": 1,
          "filters": [
            // {
            //   "colname": "userid",
            //   "operator": "=",
            //   "value": userid,
            // },
            // {
            //   "colname": "orderdate",
            //   "operator": isHistory ? "<" : ">=",
            //   "value":
            //   DateTime(now.year, now.month, now.day).dateTimeApiNonFlash,
            // }
          ],
          "sorts": [
            // {
            //   'colname': 'orderdate',
            //   'value': 'desc',
            // },
          ]
        });

    return NetworkHelper.filterResponse(
      callBack: (json) {
        var listJson = json['data'];
        return List<ExchangeOrderModel>.from(
          listJson.map(
                (data) => ExchangeOrderModel.fromJson(data),
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