import 'package:flutter/material.dart';

import '../widgets/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          Header(),
          Row(
            children: [
              Column(
                children: [
                  Text(" MyProductsHome(),"),
                  SizedBox(height: 25),
                  Text("OrdersScreen(),"),
                  //
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
