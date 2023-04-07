import 'package:flutter/material.dart';

class DarkThemeProvider with ChangeNotifier {
  bool _darkTheme = false;
  bool get getDarkTheme => _darkTheme;
  set setDarkTheme(bool value) {}
}
