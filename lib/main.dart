import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void getCurrentAppTheme() async {}
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
