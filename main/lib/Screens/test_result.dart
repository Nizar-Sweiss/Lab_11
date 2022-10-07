import 'package:flutter/material.dart';

class TestResult extends StatelessWidget {
  final testResult;
  const TestResult({super.key, this.testResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(child: Text("$testResult")),
    );
  }
}
