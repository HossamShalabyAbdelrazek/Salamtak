// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:flutter/material.dart';

// ignore: camel_case_types
class custom_text_feild extends StatelessWidget {
  const custom_text_feild({Key? key, this.text, this.padding, this.icon})
      : super(key: key);
  final String? text;
  final EdgeInsetsGeometry? padding;
  final Icon? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding!,
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            suffixIcon: icon!,
            hintText: text!,
            contentPadding: const EdgeInsets.symmetric(vertical: 5),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}
