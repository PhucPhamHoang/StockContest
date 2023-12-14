import 'package:untitled/data/model/NotificationInfoModel.dart';
import 'package:untitled/utils/network/NetworkHelper.dart';
import 'package:untitled/utils/network/NetworkService.dart';
import 'package:untitled/utils/service/DebugService.dart';

class NotificationRepository{
  String _getNotificationListUrl = "/authenapi/notiEmailTemp/findDataListExport";

  Future<List<NotificationInfoModel>> getNotificationList({int? pageNum, required bool isRead, String? userId}) async {
    final response = await NetworkService.sendRequest(
      requestType: RequestType.post,
      url: _getNotificationListUrl,
      body: {
        'recordPerPage': '30',
        'pageNum': pageNum,
        'filters': [
          {
            'colname': 'userid',
            'operator': '=',
            'value': userId,
          },
          {
            'colname': 'isRead',
            'operator': '=',
            'value': isRead,
          }
        ],
        'sorts': [
          {
            'colname': 'createddate',
            'value': 'desc',
          },
        ],
      },
    );
    return NetworkHelper.filterResponse(
      callBack: (listJson) {
        var list = listJson['data'];
        return List<NotificationInfoModel>.from(
          list.map(
                (data) => NotificationInfoModel.fromJson(data),
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