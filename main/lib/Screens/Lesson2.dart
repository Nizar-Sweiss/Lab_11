import 'package:flutter/material.dart';

class Lesson2 extends StatefulWidget {
  const Lesson2({super.key});

  @override
  State<Lesson2> createState() => _Lesson2State();
}

class _Lesson2State extends State<Lesson2> {
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
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Divider(
              color: Colors.white,
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset(
              "images/external.PNG",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Internal Organs",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Divider(
              color: Colors.white,
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset(
              "images/internal.PNG",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
