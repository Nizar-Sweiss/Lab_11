import 'dart:async';

import 'package:flutter/material.dart';
import 'package:main/Models/Questions.dart';
import 'package:main/Screens/test_result.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import '../Components/gradient_button_1.dart';

class LevelTest extends StatefulWidget {
  const LevelTest({super.key});

  @override
  State<LevelTest> createState() => _LevelTestState();
}

class _LevelTestState extends State<LevelTest> {
  String userAnswer = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 61, 105, 147),
      appBar: AppBar(
        title: Text("Test"),
        actions: [Text("$questionNum ")],
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0), child: QuestionAndAnswers()),
    );
  }
}

int questionNum = 0;
int userScore = 0;

class QuestionAndAnswers extends StatefulWidget {
  const QuestionAndAnswers({super.key});

  @override
  State<QuestionAndAnswers> createState() => _QuestionAndAnswersState();
}

class _QuestionAndAnswersState extends State<QuestionAndAnswers> {
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

  ///Check button
  static final RoundedLoadingButtonController _btnController1 =
      RoundedLoadingButtonController();

  void _doSomething(RoundedLoadingButtonController controller) async {
    Timer(Duration(seconds: 3), () {
      if (userAnswer ==
          Question.questionBank[questionNum]
              .options[Question.questionBank[questionNum].answer - 1]) {
        controller.success();
      } else {
        controller.error();
      }
    });
  }

  void ResetCheckButton(RoundedLoadingButtonController controller) async {
    controller.reset();
  }

  @override
  void initState() {
    super.initState();
    _btnController1.stateStream.listen((value) {
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    for (Question Element in Question.questionBank) {
      print(questionNum);
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                "Page ${questionNum + 1} / ${Question.questionBank.length}",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
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
          RoundedLoadingButton(
            successIcon: Icons.check,
            failedIcon: Icons.close,
            child: Text('Tap me!', style: TextStyle(color: Colors.white)),
            controller: _btnController1,
            onPressed: () => _doSomething(_btnController1),
          ),
          GradientButtonFb1(
              text: "Next",
              onPressed: () {
                setState(() {
                  if (questionNum + 1 < Question.questionBank.length) {
                    if (userAnswer ==
                        Question.questionBank[questionNum].options[
                            Question.questionBank[questionNum].answer - 1]) {
                      userScore++;
                      print("Right answer ");
                    } else {
                      print("Wrong answer ");
                    }
                    questionNum++;
                  } else {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TestResult(
                              testResult: userScore,
                            )));
                  }

                  ResetCheckButton(_btnController1);
                });
                // print(" useranswer : $userAnswer");
                // print(questionNum);
              })
        ],
      );
    }
    return Text("data");
  }
}
