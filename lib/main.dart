import 'package:e_book/Config/Themes.dart';
import 'package:e_book/Pages/HomePage/HomePage.dart';
import 'package:e_book/Pages/SplashPage/SplashPage.dart';
import 'package:e_book/Pages/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E Book',
      theme: lightTheme,
      // home: const WelcomePage(),
      home: const SplashPage(),
    );
  }
}
