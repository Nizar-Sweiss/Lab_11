import 'package:flutter/material.dart';
import 'package:lab011/Components/Take_Quiz.dart';

class Grammar_Lesson2 extends StatefulWidget {
  const Grammar_Lesson2({super.key});

  @override
  State<Grammar_Lesson2> createState() => _Grammar_Lesson2State();
}

class _Grammar_Lesson2State extends State<Grammar_Lesson2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 2 - Body Parts"),
        backgroundColor: Color.fromARGB(255, 61, 105, 147),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 61, 105, 147),
        child: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              "External Organs",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              color: Colors.white,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image(
                image: AssetImage("images/external.PNG"),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Internal Organs",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              color: Colors.white,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image(
                image: AssetImage("images/internal.PNG"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TakeQuiz()
          ],
        ),
      ),
    );
  }
}
