import 'package:flutter/material.dart';

import 'package:sociyo/utils/dimensions.dart';

class ResponsiveScreen extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  const ResponsiveScreen(
      {super.key,
      required this.webScreenLayout,
      required this.mobileScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > webScreen) {
        return webScreenLayout;
      } else {
        return mobileScreenLayout;
      }
    });
  }
}
