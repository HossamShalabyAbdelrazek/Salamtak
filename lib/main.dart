// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:second/screen/splash/presentation/widgets/splashview.dart';
import 'screen/auth/presentation/pages/signupview.dart';

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
      home: const splash(),
    );
  }
}
