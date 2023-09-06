import 'package:untitled/data/model/DefaultResponseModel.dart';
import 'package:untitled/data/model/ResponseDataListDtoModel.dart';
import 'package:untitled/utils/render/ElemRender.dart';
import 'package:untitled/utils/service/DebugService.dart';
import '../../utils/network/NetworkHelper.dart';
import '../../utils/network/NetworkService.dart';

class DefaultRepository {
  static Future<dynamic> sendPostAndReceiveContent(
      String url, Map<String, dynamic> body) async {
    final response = await NetworkService.sendRequest(
      requestType: RequestType.post,
      url: url,
      body: body,
    );

    return NetworkHelper.filterResponse(
      callBack: (json) {
        return json;
      },
      response: response,
      onFailureCallBackWithMessage: (errorType, msg, content) {
        // ElemRender.showSnackBarNotification(
        //   RouteNavigation.navigationKey.currentContext!,
        //   url + " " + errorType.toString() + " " + msg.toString(),
        // );
        DebugService.printConsole('errorType: $errorType');
        DebugService.printConsole('msg: $msg');
        throw '$msg';
      },
    );
  }

  static Future<DefaultResponseModel> sendPostAndReceive(
      String url,
      Map<String, dynamic> body, {
        bool isUploadFile = false,
      }) async {
    final response = await NetworkService.sendRequest(
      requestType: RequestType.post,
      url: url,
      body: body,
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
      returnAll: true,
    );
  }

  static Future<void> sendPostOnly(String url, Map<String, String> body) async {
    await NetworkService.sendRequest(
        requestType: RequestType.post, url: url, body: body);
  }

  static Future<ResponseDataListDtoModel> sendPostAndReceiveDataList(
      String url, Map<String, dynamic> body) async {
    final response = await NetworkService.sendRequest(
      requestType: RequestType.post,
      url: url,
      body: body,
    );

    return NetworkHelper.filterResponse(
      callBack: (listJson) {
        return ResponseDataListDtoModel.fromJson(listJson);
      },
      response: response,
      onFailureCallBackWithMessage: (errorType, msg, content) {
        DebugService.printConsole('errorType: $errorType');
        DebugService.printConsole('msg: $msg');
        throw '$msg';
      },
    );
  }

  static Future<dynamic> sendPostAndReceiveList(
      String url, Map<String, dynamic> body) async {
    final response = await NetworkService.sendRequest(
      requestType: RequestType.post,
      url: url,
      body: body,
    );

    return NetworkHelper.filterResponse(
      callBack: (listJson) {
        return listJson;
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
