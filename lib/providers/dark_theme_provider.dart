import 'package:flutter/material.dart';

import '../services/dark_them_preferences.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemePreference darkThemePreference = DarkThemePreference();

  bool _darkTheme = false;
  bool get getDarkTheme => _darkTheme;
  set setDarkTheme(bool value) {
    _darkTheme = value;
    darkThemePreference.setDarkTheme(value);
    notifyListeners();
  }
}
