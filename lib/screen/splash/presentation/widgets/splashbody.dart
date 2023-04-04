import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:second/core/utils/widgets/custom_button.dart';

import '../../../on boarding/presentation/widgets/onboarding.dart';

class splashbody extends StatefulWidget {
  const splashbody({super.key});

  @override
  State<splashbody> createState() => _splashbodyState();
}

class _splashbodyState extends State<splashbody> {
  @override
  void initState() {
    super.initState();
    goToNextView();
  }

  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image.asset('assets/images/5.png'),
        Spacer(),
        Center(
            child: Text(
          'سلامتك',
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.normal, color: Colors.white),
        ))
      ],
    );
  }
}

void goToNextView() {
  Future.delayed(Duration(seconds: 10), () {
    Get.to(() => onboarding(), transition: Transition.rightToLeft);
  });
}
