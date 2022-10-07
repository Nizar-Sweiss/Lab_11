import 'package:flutter/material.dart';
import 'package:main/Screens/Grammer/grammerLessons.dart';
import 'package:main/Screens/Grammer/Lesson1.dart';
import 'package:main/Screens/Grammer/Lesson2.dart';
import 'package:main/Screens/Grammer/Lesson3.dart';
import 'package:main/Screens/Level%20Test/level_test.dart';
import 'package:main/Screens/Level%20Test/test_result.dart';
import 'package:main/Screens/Listening/grammer_lesson1.dart';
import 'package:main/Screens/Listening/grammer_lesson2.dart';
import 'package:main/Screens/Listening/listeningLessons.dart';

import 'Screens/Home.dart';
import 'Screens/Tobics.dart';
import 'Screens/levels.dart';

void main() {
  runApp(MaterialApp(routes: {
    "Level": (context) => const Level(),
    "Home": (context) => Home(),
    "Tobics": (context) => Tobics(),
    "TestResult": (context) => TestResult(),
    "Lesson_1": (context) => Lesson1(),
    "Lesson_2": (context) => Lesson2(),
    "Lesson_3": (context) => Lesson3(),
    "GrammerLesson_1": ((context) => GrammerLesson1()),
    "GrammerLesson_2": ((context) => GrammerLesson2())
  }, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListeningLessons();
  }
}
