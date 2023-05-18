import 'package:flutter/material.dart';
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
      home: const Scaffold(
          backgroundColor: periwinkle,
          body: Center(
            child: Text(
              'Hello',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 40, color: iris),
            ),
          )),
    );
  }
}
