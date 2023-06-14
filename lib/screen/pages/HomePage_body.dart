// ignore_for_file: file_names, depend_on_referenced_packages, camel_case_types, avoid_unnecessary_containers, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second/core/custom_button.dart';

import 'package:second/screen/pages/Labspage_body.dart';
import 'package:second/screen/pages/Medicaltipspage_body.dart';
// import 'package:second/screen/pages/bottombar.dart';
import 'package:second/screen/pages/clinicspage_body.dart';
import 'package:second/screen/pages/hospitalspage_body.dart';
import 'package:second/screen/pages/pharmaciespage_body.dart';
import 'package:second/screen/pages/rayspage_body.dart';

class HomePage_body extends StatefulWidget {
  const HomePage_body({super.key});

  @override
  State<HomePage_body> createState() => _HomePage_bodyState();
}

class _HomePage_bodyState extends State<HomePage_body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              SizedBox(
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
            height: 650,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              children: [
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        height: 210,
                        width: 140,
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
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        height: 210,
                        width: 140,
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
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        height: 210,
                        width: 140,
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
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        height: 210,
                        width: 140,
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
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        height: 240,
                        width: 150,
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
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        height: 220,
                        width: 140,
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
          ),
        ],
      ),

      // extendBody: screens[selectedindex],
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
