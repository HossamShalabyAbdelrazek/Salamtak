// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second/core/constants.dart';
import 'package:second/core/custom_button.dart';
import 'package:second/screen/pages/botnavbar.dart';

// import '../../../../core/customText.dart';
import '../createaccount/createaccountbody.dart';

// ignore: camel_case_types
class loginscreen_body extends StatefulWidget {
  const loginscreen_body({super.key});

  @override
  State<loginscreen_body> createState() => _loginscreen_bodyState();
}

// ignore: camel_case_types
class _loginscreen_bodyState extends State<loginscreen_body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 5),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Divider(
                  height: 80,
                ),
                const Image(image: AssetImage('assets/images/logen.png')),
                // const Image(image: AssetImage('assets/images/6.png')),
                const SizedBox(
                  height: 100,
                ),
                Material(
                    child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'اسم المستخدم',
                    suffixIcon: const Icon(
                      Icons.account_circle,
                      color: KMainColor,
                      size: 40,
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 17),
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                )),
                const Divider(
                  height: 5,
                ),
                Material(
                    child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'كلمة المرور',
                    suffixIcon: const Icon(
                      Icons.lock,
                      color: KMainColor,
                      size: 40,
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 17),
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                )),
                const SizedBox(
                  height: 50,
                ),
                Positioned(
                  top: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 1,
                        child: CustomGeneralButton(
                          height: 70,
                          width: 250,
                          text: 'تسجيل الدخول',
                          onTap: () {
                            goTobottombar();
                          },
                          fontsize: 20,
                        ),
                      ),
                      // Flexible(
                      //   flex: 1,
                      //   child: CustomGeneralButton(
                      //     height: 50,
                      //     width: 150,
                      //     text: ' التـسجيل لاحقاً',
                      //     onTap: () {
                      //       goTobottombar();
                      //     },
                      //     fontsize: 20,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          goTocreateaccount_body();
                        },
                        child: const Text(
                          'إنشاء حساب جديد',
                          style: TextStyle(fontSize: 18),
                        )),
                    const Text(
                      'ليس لديك حساب ؟',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const Text(
                  'يمكنك التسجيل ايضا عن طريق مواقع التواصل الاجتماعي',
                  style: TextStyle(fontFamily: "cairo", fontSize: 15),
                ),
                const Divider(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook),
                    Icon(Icons.mail),
                    Icon(Icons.mobile_friendly_outlined)
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
goTocreateaccount_body() {
  Future.delayed(const Duration(seconds: 0), () {
    Get.to(() => const createaccount_body(),
        transition: Transition.rightToLeft);
  });
}

goTobottombar() {
  Future.delayed(const Duration(seconds: 0), () {
    Get.to(() => const botnavbar(), transition: Transition.rightToLeft);
  });
}
