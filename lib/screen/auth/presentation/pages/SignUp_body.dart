// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:second/core/utils/widgets/custom_button.dart';

import '../../../../core/customText.dart';

// ignore: camel_case_types
class signup_body extends StatefulWidget {
  const signup_body({super.key});

  @override
  State<signup_body> createState() => _signup_bodyState();
}

// ignore: camel_case_types
class _signup_bodyState extends State<signup_body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Positioned(
          //     top: 10,
          //     child: CustomGeneralButton(
          //       height: 20,
          //       width: 60,
          //       text: 'رجوع',
          //       fontsize: 10,
          //       onTap: () {
          //         goToNextView() {
          //           Future.delayed(Duration(seconds: 0), () {
          //             Get.to(() => OnBoardingbody(),
          //                 transition: Transition.rightToLeft);
          //           });
          //         }
          //       },
          //     )),
          Container(
            height: 350,
            width: 350,
            padding: const EdgeInsets.only(left: 10),
            child: const Image(
              image: AssetImage('assets/images/4.png'),
              fit: BoxFit.fill,
            ),
          ),
          const custom_text_feild(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            text: 'اسم المستخدم',
            icon: Icon(Icons.person),
          ),
          const custom_text_feild(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            text: ' كلمة المرور',
            icon: Icon(Icons.lock_clock_outlined),
          ),

          Positioned(
            top: 20,
            // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: CustomGeneralButton(
                    height: 45,
                    width: 140,
                    text: 'تسجيل الدخول',
                    onTap: () {},
                    fontsize: 17,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: CustomGeneralButton(
                    height: 45,
                    width: 150,
                    text: 'ليس لدي حساب',
                    onTap: () {},
                    fontsize: 17,
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.all(8),
                //   child: ElevatedButton(
                //     onPressed: () {},
                //     child: Text('تسجيل الدخول',
                //         style: TextStyle(fontFamily: "cairo")),
                //     style: ElevatedButton.styleFrom(
                //       backgroundColor: KMainColor,
                //       padding: EdgeInsets.symmetric(horizontal: 20),
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(20)),
                //       textStyle: TextStyle(
                //         color: Colors.black,
                //         fontSize: 17.0,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //   ),
                // ),
                // Container(
                //   padding: EdgeInsets.all(5),
                //   child: ElevatedButton(
                //     onPressed: () {},
                //     child: Text(
                //       'ليس لدي حساب',
                //       style: TextStyle(fontFamily: "cairo"),
                //     ),
                //     style: ElevatedButton.styleFrom(
                //       backgroundColor: KMainColor,
                //       padding: EdgeInsets.symmetric(horizontal: 20),
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(20)),
                //       textStyle: TextStyle(
                //         color: Colors.black,
                //         fontSize: 17.0,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          const Divider(),
          const Text(
            'يمكنك التسجيل ايضا عن طريق مواقع التواصل الاجتماعي',
            style: TextStyle(fontFamily: "cairo", fontSize: 15),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 160, vertical: 10),
            child: const Row(
              children: [
                Icon(Icons.facebook),
                // IconData: FontAwasomeIcons.facebookF,

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
