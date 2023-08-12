import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sociyo/utils/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

bool _obscure = true;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: quartz,
      body: SingleChildScrollView(
        physics: const PageScrollPhysics(),
        child: SafeArea(
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
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(25),
                          onTap: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 8, top: 8),
                                child: Image(
                                  image: AssetImage(
                                      "/Users/adityabhatt/Documents/sociyo_app/assets/images/google-icon-2048x2048-czn3g8x8.png"),
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                              Text(
                                "Contiue with google",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      const HeightBox(15),
                      const Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              "or",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      const HeightBox(8),
                      TextFormField(
                        style: const TextStyle(height: .7),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: "Email",
                        ),
                      ),
                      const HeightBox(5),
                      TextFormField(
                        style: const TextStyle(height: .7),
                        decoration: InputDecoration(
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
                                borderRadius: BorderRadius.circular(5)),
                            labelText: "Password"),
                        obscureText: _obscure,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 220),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text("Forgot Password?"),
                        ),
                      ),
                      const HeightBox(35),
                      InkWell(
                        onTap: () {},
                        child: Ink(
                          width: 90,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: violet,
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: const Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have account yet?"),
                          TextButton(
                              onPressed: () => {}, child: const Text("Sign up"))
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
