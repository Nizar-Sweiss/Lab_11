import 'package:flutter/material.dart';

class LessonPara extends StatelessWidget {
  LessonPara({required this.paraText});
  String? paraText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 35, 86, 133),
        border: Border.all(
          width: 1,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      padding: const EdgeInsets.all(3.0),
      margin: const EdgeInsets.all(15.0),
      child: Text(
        "$paraText",
        style: TextStyle(fontSize: 20, color: Colors.grey),
      ),
    );
  }
}
