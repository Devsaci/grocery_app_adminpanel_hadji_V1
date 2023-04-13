import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/header.dart';
import '../controllers/MenuController.dart' as menucontroller;

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Header(fct: () {
              context
                  .read<menucontroller.MenuController>()
                  .controlDashboarkMenu();
            }),
            const SizedBox(height: 10.0),
            const Row(
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
