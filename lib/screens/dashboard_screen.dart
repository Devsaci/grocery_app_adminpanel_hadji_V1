import 'package:flutter/material.dart';
import 'package:grocery_app_adminpanel_v1/responsive.dart';
import 'package:provider/provider.dart';
import '../consts/constants.dart';
import '../services/utils.dart';
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Responsive(
                        mobile: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 4,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: size.width < 650 ? 2 : 4,
                            childAspectRatio: size.width < 1100 ? 0.8 : 1.00,
                            crossAxisSpacing: defaultPadding,
                            mainAxisSpacing: defaultPadding,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return const ProductWidget();
                          },
                        ), // Error
                        desktop: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 4,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: size.width < 650 ? 2 : 4,
                            childAspectRatio: size.width < 1100 ? 0.8 : 1.00,
                            crossAxisSpacing: defaultPadding,
                            mainAxisSpacing: defaultPadding,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return const ProductWidget();
                          },
                        ), // Error
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
