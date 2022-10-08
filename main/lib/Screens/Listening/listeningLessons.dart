import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:lab011/Components/LessonsList.dart';

import '../../Components/home_button.dart';

class ListeningLessons extends StatefulWidget {
  const ListeningLessons({super.key});

  @override
  State<ListeningLessons> createState() => _ListeningLessonsState();
}

class _ListeningLessonsState extends State<ListeningLessons> {
  List subTitles = [
    "First Scenario",
    "Second Scenario",
  ];
  List lessonsRoutes = [
    "Listening_Lesson1",
    "Listening_Lesson2",
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
        child: LessonsList(subTitles, lessonsRoutes),
        // child: ListView.builder(
        //   itemCount: subTitles.length,
        //   itemBuilder: (BuildContext context, int index) {
        //     return GestureDetector(
        //       onTap: () {
        //         setState(() {
        //           Navigator.pushNamed(context, "${lessonsRoutes[index]}");
        //           // Navigator.push(context, MaterialPageRoute(builder: (context) {
        //           //   return Lesson1();
        //           // }));
        //         });
        //       },
        //       child: Container(
        //         decoration: BoxDecoration(
        //           color: Color.fromARGB(255, 35, 86, 133),
        //           border: Border.all(
        //             width: 1,
        //             color: Colors.white,
        //           ),
        //           borderRadius: BorderRadius.all(
        //             Radius.circular(15),
        //           ),
        //         ),
        //         padding: const EdgeInsets.all(3.0),
        //         margin: const EdgeInsets.all(15.0),
        //         child: ListTile(
        //           title: Text(
        //             "Lesson ${index + 1}",
        //             style: TextStyle(color: Colors.white),
        //           ),
        //           subtitle: Text(
        //             "${subTitles[index]}",
        //             style: TextStyle(color: Colors.grey),
        //           ),
        //           trailing: Icon(
        //             Icons.start,
        //             color: Colors.white,
        //           ),
        //         ),
        //       ),
        //     );
        //   },
        // ),
      ),
    );
  }
}
