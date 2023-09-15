import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sociyo/resources/auth_methods.dart';
import 'package:sociyo/utils/colors.dart';
import 'package:sociyo/utils/utils.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

bool _obscure = true;

class _SignUpScreenState extends State<SignUpScreen> {
  final contEmail = TextEditingController();
  final contName = TextEditingController();
  final contUser = TextEditingController();
  final contPass = TextEditingController();

  bool _loading = false;

  signUpUser() async {
    setState(() {
      _loading = true;
    });
    String res = await AuthMethods().signUPUser(
      name: contName.toString(),
      username: contUser.toString(),
      email: contEmail.toString(),
      password: contPass.toString(),
    );
    setState(() {
      _loading = false;
    });
    if (res != "success") {
      String s = "";

      for (int i = 0; i < res.length; i++) {
        if (res[i] == ']') {
          i++;
          for (int j = i; j < res.length; j++) {
            s += res[j];
          }
          break;
        }
      }
      showSnackBar(s, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: quartz,
      body: SingleChildScrollView(
        physics: const PageScrollPhysics(),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(12.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Welcome to",
              style: GoogleFonts.poppins(
                  fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const HeightBox(2),
            const Image(
              image: AssetImage(
                  "/Users/adityabhatt/Documents/sociyo_app/assets/images/S-31.png"),
              height: 110,
            ),
            const HeightBox(40),
            Center(child: "Sign up".text.bold.xl2.make()),
            const HeightBox(8),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Divider(
                color: Colors.black,
              ),
            ),
            const HeightBox(10),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  TextFormField(
                    style: const TextStyle(height: .7),
                    decoration: InputDecoration(
                      hintText: "Enter your name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Name",
                    ),
                    controller: contName,
                  ),
                  const HeightBox(20),
                  TextFormField(
                    style: const TextStyle(height: .7),
                    decoration: InputDecoration(
                      hintText: "Create username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Username",
                    ),
                    controller: contUser,
                  ),
                  const HeightBox(20),
                  TextFormField(
                    style: const TextStyle(height: .7),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Email address",
                      hintText: "abc@gmail.com",
                    ),
                    controller: contEmail,
                  ),
                  const HeightBox(20),
                  TextFormField(
                    style: const TextStyle(height: .7),
                    decoration: InputDecoration(
                        hintText: "Create password",
                        suffixIcon: IconButton(
                          icon: _obscure
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _obscure = !_obscure;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Password"),
                    obscureText: _obscure,
                    controller: contPass,
                  ),
                ],
              ),
            ),
            const HeightBox(60),
            Center(
              child: InkWell(
                onTap: () {},
                child: Ink(
                  width: 130,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: violet,
                  ),
                  child: InkWell(
                    onTap: signUpUser,
                    child: Center(
                      child: _loading
                          ? Center(
                              child: LoadingAnimationWidget.waveDots(
                                size: 40,
                                color: Colors.white,
                              ),
                            )
                          : const Text(
                              "Create Account",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                    ),
                  ),
                ),
              ),
            ),
            const HeightBox(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have a account?"),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: InkWell(
                      onTap: () {},
                      child: const Text(
                        " Login",
                        style: TextStyle(color: Colors.blue),
                      )),
                )
              ],
            )
          ]),
        )),
      ),
    );
  }
}
