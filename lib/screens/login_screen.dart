import 'package:flutter/material.dart';
import 'package:sociyo/utils/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: quartz,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.only(right: 0, top: 60),
                child: Image(
                  image: AssetImage(
                      '/Users/adityabhatt/Documents/sociyo_app/assets/images/S(thin).png'),
                )),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Container(
                child: Column(
                  children: [
                    const Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    HeightBox(35),
                    TextFormField(
                      style: TextStyle(height: .7),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        labelText: "Email",
                      ),
                    ),
                    HeightBox(5),
                    TextFormField(
                      style: TextStyle(height: .7),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: "Password"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
