import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../consts/constants.dart';
import '../widgets/header.dart';
import '../controllers/MenuController.dart' as menucontroller;
import '../widgets/products_widget.dart';

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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: defaultPadding,
                          mainAxisSpacing: defaultPadding,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return const ProductWidget();
                        },
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
