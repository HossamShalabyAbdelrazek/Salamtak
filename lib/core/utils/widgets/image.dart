import 'package:flutter/material.dart';
class image_all extends StatelessWidget {
  const image_all({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 350,
            width: 350,
            child: Image(
              image: AssetImage('assets'),
              fit: BoxFit.fill,
            ),
          );
  }
}