// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../on boarding/presentation/widgets/onboardingview.dart';

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
    goToonboardingview();
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

void goToonboardingview() {
  Future.delayed(const Duration(seconds: 10), () {
    Get.to(() => const onboardingview(), transition: Transition.rightToLeft);
  });
}
