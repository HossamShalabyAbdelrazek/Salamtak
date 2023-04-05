import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:second/screen/on%20boarding/presentation/widgets/onboardingview.dart';
import 'package:second/screen/on%20boarding/presentation/widgets/onboardingpage.dart';
import 'package:second/screen/on%20boarding/presentation/widgets/pageviewbody.dart';
import 'package:second/screen/splash/presentation/widgets/splashview.dart';
import 'screen/auth/presentation/pages/SignUpview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'cairo'),
      debugShowCheckedModeBanner: false,
      home: const SignUp(),
    );
  }
}