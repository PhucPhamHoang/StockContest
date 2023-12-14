import 'package:untitled/data/dto/userInfoDto.dart';
import 'package:untitled/data/model/DefaultResponseModel.dart';
import 'package:untitled/data/model/UserInfoModel.dart';
import 'package:untitled/data/model/UserNodeNameModel.dart';
import 'package:untitled/data/repository/DefaultRepository.dart';
import 'package:untitled/utils/network/NetworkHelper.dart';
import 'package:untitled/utils/network/NetworkService.dart';
import 'package:untitled/utils/service/DebugService.dart';

class UserRepository{
  String _getUserInfoUrl = "/authenapi/UserApi/getInfoUser";
  String _changeUserInfoUrl = "/authenapi/UserApi/changeUserInfo";
  String _getUserNodeUrl = "/authenapi/UserApi/getInfoUser";

  Future<UserInfoModel> getUserInfo() async {
    final response = await NetworkService.sendRequest(
      requestType: RequestType.post,
      url: _getUserInfoUrl,
      body: {
      },
    );
    return NetworkHelper.filterResponse(
      callBack: (json) {
        return UserInfoModel.fromJson(json);
      },
      response: response,
      onFailureCallBackWithMessage: (errorType, msg, content) {
        DebugService.printConsole('errorType: $errorType');
        DebugService.printConsole('msg: $msg');
        throw '$msg';
      },
    );
  }
  Future<List<UserNodeNameModel>> getUserNodeName() async {
    final response = await NetworkService.sendRequest(
      requestType: RequestType.post,
      url: _getUserNodeUrl,
      body: {
      },
    );
    return NetworkHelper.filterResponse(
      callBack: (listJson) {
        return List<UserNodeNameModel>.from(
          listJson.map(
                (data) => UserNodeNameModel.fromJson(data),
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

  Future<DefaultResponseModel> changeUserInfo({required UserInfoDto data}) async {
    final response = await NetworkService.sendRequest(
      requestType: RequestType.post,
      url: _changeUserInfoUrl,
      body: {
        'dateOfBirth' : data.dateOfBirth,
        'avatar' : data.avatar,
        'gender' : data.gender,
        'phonenumber' : data.phoneNum,
        'address' : data.address,
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
}