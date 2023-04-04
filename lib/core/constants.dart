import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../screen/on boarding/presentation/widgets/onboardingbody.dart';

// const KMainColor = Color.fromARGB(255, 46, 156, 55);
const KMainColor = Color.fromARGB(255, 4, 102, 102);



goToNextView() {
  Future.delayed(Duration(seconds: 0), () {
    Get.to(() => OnBoardingbody(), transition: Transition.rightToLeft);
  });
}
