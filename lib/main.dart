import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sociyo/responsive_screen/mobile_screen_layout.dart';
import 'package:sociyo/responsive_screen/responsive_layout_screen.dart';
import 'package:sociyo/responsive_screen/web_screen_layout.dart';
import 'package:sociyo/screens/login_screen.dart';
import 'package:sociyo/utils/colors.dart';
import 'package:sociyo/utils/dimensions.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: 'AIzaSyDDyg9EcSPP3ofZZmCn8tQcsieE-k03AU8',
      appId: '1:106759544709:web:1ccaaab728c3ffb4982eec',
      messagingSenderId: '106759544709',
      projectId: 'sociyo-92c42',
      storageBucket: 'sociyo-92c42.appspot.com',
    ));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sociyo',
        theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),

        // home: const ResponsiveScreen(
        //     webScreenLayout: WebScreen(), mobileScreenLayout: MobileScreen()));
        home: const LoginScreen());
  }
}
