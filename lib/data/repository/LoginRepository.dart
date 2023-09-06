import 'package:untitled/data/model/DefaultResponseModel.dart';
import 'package:untitled/data/repository/DefaultRepository.dart';

class LoginRepository{
  Future<DefaultResponseModel> login(String username, String password) async {
    return DefaultRepository.sendPostAndReceive(
      '/login',
      {
        'username': username,
        'password': password,
        'secureinfo': '',
      },
    );
  }
}