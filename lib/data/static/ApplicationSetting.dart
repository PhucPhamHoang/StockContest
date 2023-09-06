import 'package:shared_preferences/shared_preferences.dart';

class ApplicationSetting{
  ApplicationSetting._();

  static final instance = ApplicationSetting._();

  DateTime? currentBackPressTime;
  String currentPageName = '';

  String notiToken = '';
  Map<String, String> requestHeader = {
    'accept': '*/*',
    'Connection': 'keep-alive',
    'Content-Type': 'application/json; charset=utf-8',
  };

  late SharedPreferences sharedPreferences;
}