import 'package:flutter/material.dart';

import '../../bricks/Widgets Example/outline_button_1.dart';

class TestResult extends StatelessWidget {
  final testResult;
  const TestResult({super.key, this.testResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 20, 57, 109),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/testResultBK.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.all(12),
                alignment: Alignment.center,
                child: Text(
                  "Your Score ",
                  style: TextStyle(fontSize: 70, color: Colors.white),
                )),
            Container(
                alignment: Alignment.center,
                child: Text(
                  "$testResult",
                  style: TextStyle(fontSize: 100, color: Colors.white),
                )),
            Container(
                padding: EdgeInsets.only(top: 200),
                alignment: Alignment.bottomCenter,
                child: InvertedButtonFb2(
                    text: "Done ",
                    onPressed: () {
                      Navigator.popAndPushNamed(context, "Home");
                    }))
          ],
        ),
      ),
    );
  }
}
