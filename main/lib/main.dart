import 'package:flutter/material.dart';
import 'package:main/Screens/level_test.dart';

import 'Screens/Home.dart';
import 'Screens/Tobics.dart';
import 'Screens/levels.dart';

void main() {
  runApp(MaterialApp(routes: {
    "Level": (context) => const Level(),
    "Home": (context) => Home(),
    "Tobics": (context) => Tobics()
  }, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LevelTest();
  }
}
