import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smartpay/firebase_options.dart';
import 'package:smartpay/pages/onboarding_page.dart';
import 'package:smartpay/pages/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
