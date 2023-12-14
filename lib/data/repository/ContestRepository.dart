import 'package:untitled/data/model/ContestModel.dart';
import 'package:untitled/data/model/ContestRankModel.dart';
import 'package:untitled/data/static/enum/ContestStatusEnum.dart';
import 'package:untitled/utils/network/NetworkHelper.dart';
import 'package:untitled/utils/network/NetworkService.dart';
import 'package:untitled/utils/service/DebugService.dart';

class ContestRepository {

  final String _getRanksUrl =
      '/authenapi/rankingChallengeApi/findDataListExport';
  final String _getContestsUrl =
      '/authenapi/ChallengeApi/getChallengeStructureForUser';

  Future<List<ContestModel>> findDataList({
    required int pageNum,
    required List<RegisterStatusEnum> listRegister,
    required List<CompetitionStatusEnum> listTransaction,
    String? code,
    int? recordPerPage,
  }) async {
    var body = filterData(
      pageNum: pageNum,
      listRegister: listRegister,
      listTransaction: listTransaction,
      code: code,
      recordPerPage: recordPerPage,
    );
    final response = await NetworkService.sendRequest(
        requestType: RequestType.post, url: _getContestsUrl, body: body);

    return NetworkHelper.filterResponse(
      callBack: (json) {
        var listJson = json['data'];
        return List<ContestModel>.from(
          listJson.map(
            (json) => ContestModel.fromJson(json),
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

  Map<String, dynamic> filterData({
    required List<RegisterStatusEnum> listRegister,
    required List<CompetitionStatusEnum> listTransaction,
    String? code,
    int? recordPerPage,
    int? pageNum,
  }) {
    var now = DateTime.now();
    var filter = [];
    if (code != null) {
      filter.add({
        'colname': 'ChallengeCodeId',
        'operator': 'like',
        'value': code,
      });
    }
    if (listRegister.isNotEmpty && listRegister.length < 6) {
      for (var element in listRegister) {
        filter.add({
          'colname': 'registState',
          'operator': '!=',
          'value': element.code,
        });
      }
    }
    if (listTransaction.isNotEmpty && listTransaction.length < 4) {
      for (var element in listTransaction) {
        filter.add({
          'colname': 'tradeState',
          'operator': '!=',
          'value': element.code,
        });
      }
    }

    var body = {
      'recordPerPage': recordPerPage ?? 20,
      'filters': filter,
      'sorts': [],
      if (pageNum != null) 'pageNum': pageNum,
    };
    return body;
  }

  Future<List<ContestRankModel>> getRanks({
    required String challengeCode,
    int? pageNum,
    int? recordPerPage,
    String? name,
  }) async {
    var filter = [
      {
        'colname': 'ChallengeCodeId',
        'operator': '=',
        'value': challengeCode,
      }
    ];
    if (name?.isNotEmpty == true) {
      filter.add({
        'colname': 'fullname',
        'operator': 'LIKE',
        'value': "%$name%",
      });
    }
    var body = {
      "recordPerPage": recordPerPage ?? 100,
      "pageNum": pageNum ?? 1,
      "filters": filter,
      "sorts": [
        {
          'colname': 'ranking',
          'value': 'asc',
        },
      ]
    };

    final response = await NetworkService.sendRequest(
        requestType: RequestType.post, url: _getRanksUrl, body: body);

    return NetworkHelper.filterResponse(
      callBack: (json) {
        var listJson = json['data'];
        return List<ContestRankModel>.from(
          listJson.map(
            (data) => ContestRankModel.fromJson(data),
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

  Future<ContestRankModel?> getMyRanks({
    required String challengeCode,
    String? subAccountID,
    int? pageNum,
    int? recordPerPage,
  }) async {
    var filter = [
      {
        "colname": "challengeCodeId",
        "operator": "=",
        "value": challengeCode,
      },
    ];
    if (subAccountID?.isNotEmpty == true) {
      filter.add({
        'colname': 'subAccountId',
        'operator': '=',
        'value': subAccountID ?? "",
      });
    }
    var body = {
      "recordPerPage": recordPerPage ?? 10,
      "pageNum": pageNum ?? 1,
      "filters": filter,
    };

    final response = await NetworkService.sendRequest(
        requestType: RequestType.post, url: _getRanksUrl, body: body);

    return NetworkHelper.filterResponse(
      callBack: (json) {
        var listJson = json['data'];
        return List<ContestRankModel>.from(
          listJson.map(
            (data) => ContestRankModel.fromJson(data),
          ),
        ).firstOrNull;
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
