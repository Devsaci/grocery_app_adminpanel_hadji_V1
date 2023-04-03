import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: Padding(
        padding: EdgeInsets.all(20.0),
        child: Text("SideMenu"),
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("SideMenu"),
            Text("DashboardScreen"),
          ],
        ),
      ),
    );
  }
}
