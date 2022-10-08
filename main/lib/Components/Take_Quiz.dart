import 'package:flutter/material.dart';

class TakeQuiz extends StatefulWidget {
  const TakeQuiz({super.key});

  @override
  State<TakeQuiz> createState() => _TakeQuizState();
}

class _TakeQuizState extends State<TakeQuiz> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(Icons.start),
      label: Text("Take a quiz !"),
      style: ElevatedButton.styleFrom(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30),
        ),
        backgroundColor: Color.fromARGB(255, 35, 86, 133),
      ),
    );
  }
}
