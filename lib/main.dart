import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/main_screen.dart';
import 'providers/dark_theme_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.setDarkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: const MaterialApp(
        debugShowCheckedModeBanner: true,
        title: ' Flutter Grocery',
        home: MainScreen(),
      ),
    );
  }
}
