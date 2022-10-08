import 'package:flutter/material.dart';
import 'package:lab011/Components/LessonsList.dart';

import '../../Components/home_button.dart';

class VocabularyLessons extends StatefulWidget {
  const VocabularyLessons({super.key});

  @override
  State<VocabularyLessons> createState() => _VocabularyLessonsState();
}

class _VocabularyLessonsState extends State<VocabularyLessons> {
  List vocabularySubTitles = [
    "Accessoiries",
    "Fruit",
    "Family",
    "House and Class",
    "Animals",
    "Opposite Adjectives",
    "Numbers",
    "Time",
    "Sport",
    "Jobs",
    "Transportation"
  ];
  List vocabularyLessonsRoutes = [
    "Vocabulary_Lesson_1",
    "Vocabulary_Lesson_2",
    "Grammar_Lesson1",
    "Grammar_Lesson2",
    "Grammar_Lesson3",
    "Grammar_Lesson1",
    "Grammar_Lesson2",
    "Grammar_Lesson3",
    "Grammar_Lesson1",
    "Grammar_Lesson2",
    "Grammar_Lesson1",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          HomeButton(context),
        ],
        title: Text("Lessons"),
        backgroundColor: Color.fromARGB(255, 61, 105, 147),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 61, 105, 147),
        child: LessonsList(vocabularySubTitles, vocabularyLessonsRoutes),
      ),
    );
  }
}
