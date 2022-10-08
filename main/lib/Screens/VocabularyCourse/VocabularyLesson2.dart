import 'package:flutter/material.dart';

import '../../components/Take_Quiz.dart';
import '../../components/words _and _pictures.dart';

class Vocabulary_Lesson2 extends StatefulWidget {
  const Vocabulary_Lesson2({super.key});

  @override
  State<Vocabulary_Lesson2> createState() => _Vocabulary_Lesson2State();
}

class _Vocabulary_Lesson2State extends State<Vocabulary_Lesson2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 61, 105, 147),
        child: ListView(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              "Fruit Vocabulary",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            SizedBox(
              height: 25,
            ),
            WordAndPicture(imgTitle: "Pear", imgPath: "images/pear.jpg"),
            WordAndPicture(imgTitle: "Plum", imgPath: "images/plum.jpg"),
            WordAndPicture(imgTitle: "Peach", imgPath: "images/peach.jpg"),
            WordAndPicture(imgTitle: "Grapes", imgPath: "images/grapes.jpg"),
            WordAndPicture(imgTitle: "Coconut", imgPath: "images/coco.jpg"),
            WordAndPicture(imgTitle: "Orange", imgPath: "images/orange.jpg"),
            WordAndPicture(
                imgTitle: "Strawberry", imgPath: "images/strawberry.jpg"),
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
