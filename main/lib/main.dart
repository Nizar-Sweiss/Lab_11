import 'package:flutter/material.dart';
import 'package:main/Screens/Level%20Test/level_test.dart';
import 'package:main/Screens/Level%20Test/test_result.dart';

import 'Screens/Home.dart';
import 'Screens/Tobics.dart';
import 'Screens/levels.dart';

void main() {
  runApp(MaterialApp(routes: {
    "Level": (context) => const Level(),
    "Home": (context) => Home(),
    "Tobics": (context) => Tobics(),
    "TestResult": (context) => TestResult()
  }, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LevelTest();
  }
}
