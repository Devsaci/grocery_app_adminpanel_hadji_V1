import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({super.key, required this.mobile, required this.desktop});
  final Widget mobile;
  // final Widget? tablet;
  final Widget desktop;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
