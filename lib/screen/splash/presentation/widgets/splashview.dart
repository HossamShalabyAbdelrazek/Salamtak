import 'package:flutter/material.dart';
import 'package:second/core/constants.dart';
import 'package:second/screen/splash/presentation/widgets/splashbody.dart';

class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KMainColor,
      body: splashbody(),
    );
  }
}