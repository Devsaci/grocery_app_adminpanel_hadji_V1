import 'package:flutter/material.dart';

import '../consts/constants.dart';
import 'products_widget.dart';

class ProductGridWidget extends StatelessWidget {
  const ProductGridWidget({
    super.key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  });
  final int crossAxisCount;
  final double childAspectRatio;
  // final bool isInMain;
  @override
  Widget build(BuildContext context) {
    //Size size = Utils(context).getScreenSize;
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (BuildContext context, int index) {
        return const ProductWidget();
      },
    );
  }
}
