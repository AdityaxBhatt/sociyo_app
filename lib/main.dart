import 'package:flutter/material.dart';
import 'package:sociyo/responsive_screen/responsive_layout_screen.dart';
import 'package:sociyo/utils/colors.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sociyo',
        theme: ThemeData.dark(),
        home: ResponsiveScreen(
            webScreenLayout: webScreenLayout,
            mobileScreenLayout: mobileScreenLayout));
  }
}
