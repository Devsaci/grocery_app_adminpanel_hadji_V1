import 'package:flutter/material.dart';

import '../widgets/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Header(),
            SizedBox(height: 10.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Text("MyProductsHome(),"),
                      SizedBox(height: 10.0),
                      Text("OrdersScreen(),"),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
