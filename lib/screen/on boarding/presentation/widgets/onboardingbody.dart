// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:second/core/utils/widgets/custom_button.dart';

import '../../../auth/presentation/pages/signupview.dart';

class OnBoardingbody extends StatefulWidget {
  const OnBoardingbody({super.key});

  @override
  State<OnBoardingbody> createState() => _OnBoardingbodyState();
}

class _OnBoardingbodyState extends State<OnBoardingbody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 550,
            width: 600,
            child: Stack(
              children: [
                Positioned(
                  top: 15,
                  left: 25,
                  child: Image.asset(
                    'assets/images/5.png',
                    // fit: BoxFit.fill,
                  ),
                ),
                const Positioned(
                  top: 380,
                  left: 80,
                  child: Text(
                    '                    ..... مرحباً بك ',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'cairo',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Positioned(
                  top: 450,
                  left: 70,
                  child: Text(
                    // 'نحن هنا سنساعدك في عرض خدمتك او الاستفاده من الخدمات المقدمة سوف نكون سعداء بنضمامك الينا',
                    'سوف نكون سعداء بإنضمامك إلينا',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'cairo',
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              CustomGeneralButton(
                onTap: () {
                  goToNextView();
                },
                height: 85,
                width: 180,
                fontsize: 16,
                text: 'مستخدم',
              ),
              const CustomGeneralButton(
                height: 85,
                width: 180,
                fontsize: 15,
                text: 'مقدم خدمة',
              ),
            ],
          )
        ],
      ),
    );
  }
}

goToNextView() {
  Future.delayed(const Duration(seconds: 0), () {
    Get.to(() => const signup(), transition: Transition.rightToLeft);
  });
}
