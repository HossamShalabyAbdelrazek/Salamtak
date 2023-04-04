import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:second/core/utils/widgets/custom_button.dart';
import 'package:second/screen/auth/presentation/widgets/SignUp.dart';
import 'package:second/screen/on%20boarding/presentation/widgets/onboardingbody.dart';
import 'package:second/screen/on%20boarding/presentation/widgets/pageviewbody.dart';
import 'package:second/screen/splash/presentation/widgets/splash.dart';

import 'onboarding.dart';

class onboarding1 extends StatefulWidget {
  const onboarding1({super.key});

  @override
  State<onboarding1> createState() => _onboarding1State();
}

class _onboarding1State extends State<onboarding1> {
  @override
  // void initState() {
  //   super.initState();
  //   goToNextView();
  // }

  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          children: [
            pageviewbody(
              image: 'assets/images/1.png',
              title: 'سوف نقدم لك كل المساعدات الطبيه التي تحتاجها',
            ),
            pageviewbody(
              image: 'assets/images/11.png',
              title: 'سوف نساعدك في تقديم خدمتك الطبية بكل سهوله',
            ),
          ],
        ),
        // Divider(),
        Positioned(
            bottom: 35,
            left: 120,
            child: CustomGeneralButton(
              onTap: () {
                goToNextView();
              },
              text: 'التالي',
              height: 70,
              width: 150,
              fontsize: 15,
            ))
      ],
    );
  }
}

goToNextView() {
  Future.delayed(Duration(seconds: 0), () {
    Get.to(() => OnBoardingbody(), transition: Transition.rightToLeft);
  });
}
