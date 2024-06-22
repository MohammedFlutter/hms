
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class OnboardingRepo {
  OnboardingRepo({required SharedPreferences preferences})
      : _preferences = preferences;

  final SharedPreferences _preferences;

  static const isFirstTimeLaunchKey  = 'first time';

  void launched() {
     _preferences.setBool(isFirstTimeLaunchKey , false);
  }

  bool isFirstTimeLaunch() {
    return _preferences.getBool(isFirstTimeLaunchKey ) ?? true;
  }
}
