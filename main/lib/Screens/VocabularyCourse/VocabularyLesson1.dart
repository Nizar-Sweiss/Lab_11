import 'package:flutter/material.dart';
import 'package:lab011/Components/Take_Quiz.dart';
import 'package:lab011/Components/words%20_and%20_pictures.dart';

class Vocabulary_Lesson1 extends StatefulWidget {
  const Vocabulary_Lesson1({super.key});

  @override
  State<Vocabulary_Lesson1> createState() => _Vocabulary_Lesson1State();
}

class _Vocabulary_Lesson1State extends State<Vocabulary_Lesson1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson1"),
      ),
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
              "Accessories Vocabulary",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            SizedBox(
              height: 25,
            ),
            WordAndPicture(imgTitle: "Bag", imgPath: "images/bag.jpg"),
            WordAndPicture(imgTitle: "Glasses", imgPath: "images/glass.jpg"),
            WordAndPicture(imgTitle: "Gloves", imgPath: "images/gloves.jpg"),
            WordAndPicture(imgTitle: "Belt", imgPath: "images/belt.jpg"),
            WordAndPicture(imgTitle: "Scarf", imgPath: "images/scarf.jpg"),
            WordAndPicture(imgTitle: "Pocket", imgPath: "images/pocket.jpg"),
            WordAndPicture(
                imgTitle: "Bracelet", imgPath: "images/bracelet.jpg"),
            WordAndPicture(
                imgTitle: "Necklace", imgPath: "images/necklace.jpg"),
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
