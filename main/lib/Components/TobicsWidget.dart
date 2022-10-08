import 'package:flutter/material.dart';

class Tobicsw extends StatelessWidget {
  Tobicsw({required this.title, required this.imageurl, required this.myRout});
  String? title;
  String? imageurl;
  String? myRout;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.popAndPushNamed(context, "$myRout");
          },
          child: Container(
            width: 50,
            height: 50,
            child: Image.asset("$imageurl"),
          ),
        ),
        Text("$title")
      ],
    );
  }
}
