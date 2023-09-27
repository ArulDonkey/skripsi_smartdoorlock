import 'package:shared_preferences/shared_preferences.dart';

class iniSharedPreferences {
  setFirsLaunchValue(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool("isFirstLaunch", value);
  }

  getFirstLaunchValue(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var isFirstLaunch = sharedPreferences.getBool("isFirstLaunch");

    return isFirstLaunch ?? true;
  }
}
