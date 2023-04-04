import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second/core/constants.dart';
import 'package:second/core/utils/widgets/custom_button.dart';
import 'package:second/screen/splash/presentation/widgets/splash.dart';

import '../../../on boarding/presentation/widgets/onboardingbody.dart';

class SignUp_body extends StatefulWidget {
  const SignUp_body({super.key});

  @override
  State<SignUp_body> createState() => _SignUp_bodyState();
}

class _SignUp_bodyState extends State<SignUp_body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Expanded(
          //     // height: 250,
          //     child: CustomGeneralButton(
          //   height: 50,
          //   width: 60,
          //   text: 'رجوع',
          //   fontsize: 15,
          //   onTap: () {
          //     goToNextView() {
          //       Future.delayed(Duration(seconds: 0), () {
          //         Get.to(() => OnBoardingbody(),
          //             transition: Transition.rightToLeft);
          //       });
          //     }
          //   },
          // )),
          Container(
            height: 350,
            width: 350,
            padding: EdgeInsets.only(left: 10),
            child: Image(
              image: AssetImage('assets/images/4.png'),
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.person),
                  hintText: 'اسم المستخدم',
                  contentPadding: EdgeInsets.symmetric(vertical: 5),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.lock_clock_outlined),
                  hintText: ' كلمة المرور',
                  contentPadding: EdgeInsets.symmetric(vertical: 5),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('تسجيل الدخول',
                        style: TextStyle(fontFamily: "cairo")),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: KMainColor,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'ليس لدي حساب',
                      style: TextStyle(fontFamily: "cairo"),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: KMainColor,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              'يمكنك التسجيل ايضا عن طريق مواقع التواصل الاجتماعي',
              style: TextStyle(fontFamily: "cairo", fontSize: 15),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 160, vertical: 10),
            child: Row(
              children: [
                Icon(Icons.facebook),
                Icon(Icons.mail),
                Icon(Icons.mobile_friendly_outlined)
              ],
            ),
          )
        ],
      ),
    );
  }
}
