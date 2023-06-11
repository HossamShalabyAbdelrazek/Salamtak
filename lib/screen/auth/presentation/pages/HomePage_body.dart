// ignore_for_file: file_names, depend_on_referenced_packages, camel_case_types, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second/core/utils/widgets/custom_button.dart';
import 'package:second/screen/auth/presentation/pages/Labspage_body.dart';
import 'package:second/screen/auth/presentation/pages/Medicaltipspage_body.dart';
import 'package:second/screen/auth/presentation/pages/clinicspage_body.dart';
import 'package:second/screen/auth/presentation/pages/hospitalspage_body.dart';
import 'package:second/screen/auth/presentation/pages/pharmaciespage_body.dart';
import 'package:second/screen/auth/presentation/pages/rayspage_body.dart';
// ignore: unused_import
import '../../../../core/constants.dart';
// ignore: unused_import
import '../pages/loginscreen_body.dart';

class HomePage_body extends StatefulWidget {
  const HomePage_body({super.key});

  @override
  State<HomePage_body> createState() => _HomePage_bodyState();
}

class _HomePage_bodyState extends State<HomePage_body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 35),
          Row(
            children: [
              // ignore: sized_box_for_whitespace
              Container(
                height: 60,
                width: 90,
                child: Flexible(
                  flex: 1,
                  child: CustomGeneralButton(
                    height: 50,
                    width: 60,
                    text: 'بحث',
                    onTap: () {},
                    fontsize: 15,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                height: 50,
                width: 290,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'أكتب هنا',
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            // margin: EdgeInsets.all(20),
            height: 700,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              children: [
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 210,
                        width: 160,
                        child: Column(
                          children: [
                            const Image(
                              image: AssetImage('assets/images/7878.png'),
                            ),
                            TextButton(
                              onPressed: () {
                                goToLabspage_body();
                              },
                              child: const Text(
                                'معامل التحاليل',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ),
                          ],
                        )),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 210,
                        width: 160,
                        child: Column(
                          children: [
                            const Image(
                              image: AssetImage('assets/images/team.png'),
                            ),
                            TextButton(
                              onPressed: () {
                                goTohospitalspage_body();
                              },
                              child: const Text(
                                'مستشفيات ',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 210,
                        width: 160,
                        child: Column(
                          children: [
                            const Image(
                              image: AssetImage('assets/images/8888.png'),
                            ),
                            TextButton(
                              onPressed: () {
                                goToLabspage_body();
                              },
                              child: const Text(
                                'عيادات ',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ),
                          ],
                        )),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 210,
                        width: 160,
                        child: Column(
                          children: [
                            const Image(
                              image: AssetImage('assets/images/pp.png'),
                            ),
                            TextButton(
                              onPressed: () {
                                goTopharmaciespage_body();
                              },
                              child: const Text(
                                'صيدليات ',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 240,
                        width: 160,
                        child: Column(
                          children: [
                            const Image(
                              image: AssetImage('assets/images/anatomy.png'),
                            ),
                            TextButton(
                              onPressed: () {
                                goTorayspage_body();
                              },
                              child: const Text(
                                'مراكز الاشعة ',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ),
                          ],
                        )),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 220,
                        width: 160,
                        child: Column(
                          children: [
                            const Image(
                              image: AssetImage('assets/images/tip.png'),
                            ),
                            TextButton(
                              onPressed: () {
                                goToMedicaltipspage_body();
                              },
                              child: const Text(
                                'نصائح طبية ',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

goToLabspage_body() {
  Future.delayed(const Duration(seconds: 0), () {
    Get.to(() => const Labspage_body(), transition: Transition.rightToLeft);
  });
}

goTohospitalspage_body() {
  Future.delayed(const Duration(seconds: 0), () {
    Get.to(() => const hospitalspage_body(),
        transition: Transition.rightToLeft);
  });
}

goTopharmaciespage_body() {
  Future.delayed(const Duration(seconds: 0), () {
    Get.to(() => const pharmaciespage_body(),
        transition: Transition.rightToLeft);
  });
}

goToclinicspage_body() {
  Future.delayed(const Duration(seconds: 0), () {
    Get.to(() => const clinicspage_body(), transition: Transition.rightToLeft);
  });
}

goTorayspage_body() {
  Future.delayed(const Duration(seconds: 0), () {
    Get.to(() => const rayspage_body(), transition: Transition.rightToLeft);
  });
}

goToMedicaltipspage_body() {
  Future.delayed(const Duration(seconds: 0), () {
    Get.to(() => const Medicaltipspage_body(),
        transition: Transition.rightToLeft);
  });
}
