import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lab011/Screens/Level%20Test/test_result.dart';

import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../Components/gradient_button_1.dart';
import '../../Models/Questions.dart';
import '../../bricks/Widgets Example/dialog_gradient.dart';
import '../../bricks/Widgets Example/outline_button_1.dart';

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
        backgroundColor: Color.fromARGB(255, 61, 105, 147),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, "Tobics");
                },
                icon: Icon(Icons.arrow_back)),
            Text("test"),
            // SizedBox(
            //   width: 200,
            // ),
            IconButton(
                onPressed: () {
                  // edit the home
                  Navigator.popAndPushNamed(context, "Home");
                },
                icon: Icon(Icons.home)),
          ],
        ),
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
      id: 1,
      question: " My father hates ________ a tie to work.",
      answer: 3,
      options: [
        "to wear ",
        "wearing",
        "  to wear/wearing",
        "not from the listed answers"
      ]);
  Question Q2 = Question(
      id: 1,
      question: " We like ________ our grandmother on Sundays ",
      answer: 3,
      options: [
        "to visit ",
        "visiting",
        " to visit/visiting",
        "not from the listed answers"
      ]);
  Question Q3 = Question(
      id: 1,
      question: " I might want ________ some money soon. ",
      answer: 1,
      options: [
        "to borrow ",
        "borrowing",
        " to borrow/borrowing",
        "not from the listed answers"
      ]);
  Question Q4 = Question(
      id: 1,
      question: " We can't afford ________ a vacation this summer. ",
      answer: 1,
      options: [
        " to take",
        "taking",
        " to take/taking",
        "not from the listed answers"
      ]);

  ///Check button
  static final RoundedLoadingButtonController _btnController1 =
      RoundedLoadingButtonController();

  void _doSomething(RoundedLoadingButtonController controller) async {
    Timer(Duration(seconds: 1), () {
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
                      onChanged: (ind) => setState(() {
                        userAnswer = ind.toString();
                        _doSomething(_btnController1);
                        ResetCheckButton(_btnController1);
                      }),
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
          Container(
            child: RoundedLoadingButton(
              width: 200,
              color: Color.fromARGB(255, 31, 70, 125),
              successIcon: Icons.check,
              failedIcon: Icons.close,
              child: Text('Check Your answer',
                  style: TextStyle(color: Color.fromARGB(255, 250, 250, 250))),
              controller: _btnController1,
              onPressed: () {
                setState(() {
                  print(userAnswer);
                  if (userAnswer == "") {
                    // Call this in a function
                    showDialog<Dialog>(
                        context: context,
                        builder: (BuildContext context) => DialogFb3());
                  } else {
                    _doSomething(_btnController1);
                  }
                });
              },
            ),
          ),
          InvertedButtonFb2(
              text: "Next",
              onPressed: () {
                setState(() {
                  if (userAnswer != "") {
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TestResult(
                                    testResult: userScore,
                                  )));
                    }
                  } else {
                    showDialog<Dialog>(
                        context: context,
                        builder: (BuildContext context) => DialogFb3());
                  }

                  userAnswer = "";
                  ResetCheckButton(_btnController1);
                });
                print(" useranswer : $userAnswer");
                print("Len Q : ${Question.questionBank.length}");
              }),
        ],
      );
    }
    return Text("");
  }
}
