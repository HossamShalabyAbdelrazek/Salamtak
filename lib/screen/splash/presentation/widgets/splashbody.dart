// ignore: duplicate_ignore
// ignore: depend_on_referenced_packages
// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second/screen/auth/presentation/pages/loginscreen_body.dart';

// import '../../../on boarding/presentation/widgets/onboardingview.dart';

// ignore: camel_case_types
class splashbody extends StatefulWidget {
  const splashbody({super.key});

  @override
  State<splashbody> createState() => _splashbodyState();
}

// ignore: camel_case_types
class _splashbodyState extends State<splashbody> {
  @override
  void initState() {
    super.initState();
    goTologinscreen_body();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'سلامتك',
        style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.normal, color: Colors.white),
      ),
    );
  }
}

void goTologinscreen_body() {
  Future.delayed(const Duration(seconds: 15), () {
    Get.to(() => const loginscreen_body(), transition: Transition.rightToLeft);
  });
}
