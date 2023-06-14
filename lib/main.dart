// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:second/screen/pages/HomePage_body.dart';
import 'package:second/screen/pages/botnavbar.dart';
import 'package:second/screen/splash/presentation/widgets/splashview.dart';

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
