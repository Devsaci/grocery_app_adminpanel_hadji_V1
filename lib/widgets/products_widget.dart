import 'package:flutter/material.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      color: Theme.of(context).cardColor.withOpacity(0.9),
      child: InkWell(
        onTap: () {},
      ),
    );
  }
}
