import 'package:flutter/material.dart';
import 'package:get/get.dart';

class pageviewbody extends StatelessWidget {
  const pageviewbody({Key? key, this.title, this.image}) : super(key: key);
  final String? title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        SizedBox(height: 320, child: Image.asset(image!)),
        Divider(),
        Divider(),
        Text(
          title!,
          style: TextStyle(
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
