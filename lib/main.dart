import 'package:flutter/material.dart';
import 'package:grocery_app_adminpanel_v1/consts/theme_data.dart';
import 'package:provider/provider.dart';
import '../screens/main_screen.dart';
import 'providers/dark_theme_provider.dart';
import 'consts/theme_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.setDarkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            return themeChangeProvider;
          },
        ),
      ],
      child: Consumer<DarkThemeProvider>(
        builder: (BuildContext context, themeProvider, Widget? child) {
          return MaterialApp(
            debugShowCheckedModeBanner: true,
            title: ' Flutter Grocery',
            theme: Styles.themeData(true, context),
            home: MainScreen(),
          );
        },
      ),
    );
  }
}
