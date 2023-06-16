// ignore_for_file: depend_on_referenced_packages, unused_import

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:second/core/custom_button.dart';
import 'package:second/screen/splash/presentation/widgets/splashview.dart';

import '../createaccount/createaccountbody.dart';

// ignore: camel_case_types
class chooseservicebody extends StatelessWidget {
  const chooseservicebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: [
            Container(
              height: 350,
              width: 350,
              padding: const EdgeInsets.only(left: 10),
              child: const Image(
                image: AssetImage('assets/images/6.png'),
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'من فضلك ادخل نوع الخدمة ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
            Row(
              children: [
                CustomGeneralButton(
                  text: 'عياده',
                  height: 50,
                  width: 113,
                  fontsize: 15,
                  onTap: () {
                    goToNextView();
                  },
                ),
                CustomGeneralButton(
                  text: 'مستشفي',
                  height: 50,
                  width: 113,
                  fontsize: 15,
                  onTap: () {
                    goToNextView();
                  },
                ),
                CustomGeneralButton(
                  text: 'صيدلية',
                  height: 50,
                  width: 113,
                  fontsize: 15,
                  onTap: () {
                    goToNextView();
                  },
                ),
              ],
            ),
            const Divider(),
            Row(
              children: [
                CustomGeneralButton(
                  text: 'معمل تحاليل',
                  height: 50,
                  width: 113,
                  fontsize: 15,
                  onTap: () {
                    goToNextView();
                  },
                ),
                CustomGeneralButton(
                  text: 'مركز اشعة',
                  height: 50,
                  width: 113,
                  fontsize: 15,
                  onTap: () {
                    goToNextView();
                  },
                ),
                CustomGeneralButton(
                  text: 'طبيب',
                  height: 50,
                  width: 113,
                  fontsize: 15,
                  onTap: () {
                    goToNextView();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

goToNextView() {
  Future.delayed(const Duration(seconds: 0), () {
    Get.to(() => const createaccount_body(),
        transition: Transition.rightToLeft);
  });
}
