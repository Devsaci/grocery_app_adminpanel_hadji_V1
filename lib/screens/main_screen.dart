import 'package:flutter/material.dart';

import '../widgets/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: SideMenu(),
      body: SafeArea(
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
