import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/data/static/ApplicationSetting.dart';

class StartupService {
  StartupService._();

  static final instance = StartupService._();

  Future<void> runStartupService() async {
    ApplicationSetting.instance.sharedPreferences =
    await SharedPreferences.getInstance();
  }
}