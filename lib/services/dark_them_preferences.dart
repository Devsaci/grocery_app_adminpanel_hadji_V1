import 'package:shared_preferences/shared_preferences.dart';

class DarkThemePreference {
  static const THEME_STATUS = "THEMESTATUS";
  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
  }
}
