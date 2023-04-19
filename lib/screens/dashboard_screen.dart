import 'package:flutter/material.dart';
import 'package:grocery_app_adminpanel_v1/responsive.dart';
import 'package:provider/provider.dart';
import '../consts/constants.dart';
import '../services/utils.dart';
import '../widgets/grid_products.dart';
import '../widgets/header.dart';
import '../controllers/MenuController.dart' as menucontroller;
import '../widgets/products_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).getScreenSize;
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
                      Responsive(
                        mobile: ProductGridWidget(),
                        desktop: ProductGridWidget(),
                      ),
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
