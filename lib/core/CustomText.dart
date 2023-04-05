import 'package:flutter/material.dart';

class CustomTextfeild extends StatelessWidget {
  const CustomTextfeild({Key? key, this.text, this.padding, this.icon})
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
            contentPadding: EdgeInsets.symmetric(vertical: 5),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}
