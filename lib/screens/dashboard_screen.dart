import 'package:flutter/material.dart';

import '../widgets/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Header(),
          Row(
            children: [
              Column(
                children: const [
                  // MyProductsHome(),
                  // SizedBox(height: defaultPadding),
                  // OrdersScreen(),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
