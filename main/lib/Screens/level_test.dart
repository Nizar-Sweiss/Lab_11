import 'package:flutter/material.dart';
import 'package:main/Models/Questions.dart';

import '../Components/gradient_button_1.dart';

class LevelTest extends StatefulWidget {
  const LevelTest({super.key});

  @override
  State<LevelTest> createState() => _LevelTestState();
}

class _LevelTestState extends State<LevelTest> {
  // List<String> options = [
  //   "Option 1 ",
  //   "Option 2 ",
  //   "Option 3 ",
  //   "Option 4 ",
  // ];
  // Question testQ1 =
  //     Question(id: 1, question: "THee question", answer: 2, options: [
  //   "Option 11 ",
  //   "Option 22 ",
  //   "Option 33 ",
  //   "Option 44 ",
  // ]);
  String userAnswer = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 61, 105, 147),
      appBar: AppBar(
        title: Text("Test"),
        actions: [Text("NUMS ")],
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0), child: QuestionAndAnswers()),
    );
  }
}

class QuestionAndAnswers extends StatefulWidget {
  const QuestionAndAnswers({super.key});

  @override
  State<QuestionAndAnswers> createState() => _QuestionAndAnswersState();
}

class _QuestionAndAnswersState extends State<QuestionAndAnswers> {
  int questionNum = 0;
  String userAnswer = "";
  Question Q1 = Question(
      id: 1, question: " Q 1 ", answer: 1, options: ["O1 ", "O2", " O3", "O4"]);
  Question Q2 = Question(
      id: 1,
      question: " Q 2 ",
      answer: 2,
      options: ["O12 ", "O22", " O32", "O42"]);
  Question Q3 = Question(
      id: 1,
      question: " Q 3 ",
      answer: 3,
      options: ["O13 ", "O23", " O33", "O43"]);
  Question Q4 = Question(
      id: 1,
      question: " Q 4 ",
      answer: 4,
      options: ["O14 ", "O24", " O34", "O44"]);
  @override
  Widget build(BuildContext context) {
    for (Question Element in Question.questionBank) {
      print(questionNum);
      return Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                Question.questionBank[questionNum].question,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 20, 57, 109),
              border: Border.all(width: 2, color: Colors.white),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 20, 57, 109),
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: RadioListTile(
                      title: Text(
                        Question.questionBank[questionNum].options[index],
                        style: TextStyle(color: Colors.white),
                      ),
                      activeColor: Colors.white,
                      tileColor: Colors.white,
                      value: Question.questionBank[questionNum].options[index],
                      groupValue: userAnswer,
                      onChanged: (ind) =>
                          setState(() => userAnswer = ind.toString()),
                    ),
                  ),
                ),
                itemCount: Question.questionBank[questionNum].options.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 15,
                  );
                },
              ),
            ),
          ),
          GradientButtonFb1(
              text: "Next",
              onPressed: () {
                setState(() {
                  questionNum++;
                });

                print(questionNum);
              })
        ],
      );
    }
    return Text("data");
  }
}
