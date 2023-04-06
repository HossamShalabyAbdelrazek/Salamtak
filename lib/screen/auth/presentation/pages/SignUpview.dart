// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:second/screen/auth/presentation/pages/signup_body.dart';

// ignore: camel_case_types
class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: signup_body());
  }
}
