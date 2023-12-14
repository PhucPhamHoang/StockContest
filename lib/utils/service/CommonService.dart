import 'package:untitled/data/static/ApplicationSetting.dart';
import 'package:untitled/data/static/enum/SharedPreferencesEnum.dart';

class CommonService {
  CommonService._();

  static final instance = CommonService._();

  void clearLocalCache() {
    ApplicationSetting.instance.sharedPreferences
        .remove(SharedPreferencesEnum.SNBSESSION.name);

    ApplicationSetting.instance.sharedPreferences
        .remove(SharedPreferencesEnum.SET_COOKIE_DATA.name);

  }
}