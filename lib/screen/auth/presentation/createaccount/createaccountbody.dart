// ignore_for_file: depend_on_referenced_packages, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/widgets/custom_button.dart';
import '../pages/loginscreen_body.dart';

class createaccount_body extends StatefulWidget {
  const createaccount_body({super.key});

  @override
  State<createaccount_body> createState() => _createaccount_bodyState();
}

class _createaccount_bodyState extends State<createaccount_body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Image(image: AssetImage('assets/images/9.png')),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                  child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'الاسم بالكامل',
                  contentPadding: const EdgeInsets.symmetric(vertical: 17),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                  child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: ' عنوان البريد الإلكتروني ',
                  contentPadding: const EdgeInsets.symmetric(vertical: 17),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                  child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: ' رقم الهاتف',
                  contentPadding: const EdgeInsets.symmetric(vertical: 17),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                  child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: ' كلمة المرور',
                  contentPadding: const EdgeInsets.symmetric(vertical: 17),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              )),
            ),
            Flexible(
              flex: 1,
              child: CustomGeneralButton(
                height: 55,
                width: 260,
                text: 'إنشاء حساب',
                onTap: () {
                  goToNextView();
                },
                fontsize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

goToNextView() {
  Future.delayed(const Duration(seconds: 0), () {
    Get.to(() => const loginscreen_body(), transition: Transition.rightToLeft);
  });
}
