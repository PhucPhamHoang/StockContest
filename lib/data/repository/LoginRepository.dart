import 'package:untitled/data/model/DefaultResponseModel.dart';
import 'package:untitled/data/repository/DefaultRepository.dart';
import 'package:untitled/utils/service/CommonService.dart';

class LoginRepository{
  Future<DefaultResponseModel> login(String username, String password) async {
    return DefaultRepository.sendPostAndReceive(
      '/edulogin',
      {
        'username': username,
        'password': password,
      },
    );
  }
  Future<void> logOut() async {
    await DefaultRepository.sendPostOnly('/logout', {});

    CommonService.instance.clearLocalCache();
  }
}