import 'package:flutter/material.dart';

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
    return const Placeholder();
  }
}
