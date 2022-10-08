import 'package:flutter/material.dart';

class LessonsList extends StatefulWidget {
  const LessonsList(this.subTitles, this.lessonsRoutes);

  final List? subTitles;
  final List? lessonsRoutes;

  @override
  State<LessonsList> createState() => _LessonsListState();
}

class _LessonsListState extends State<LessonsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.subTitles!.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              Navigator.pushNamed(context, "${widget.lessonsRoutes![index]}");
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 35, 86, 133),
              border: Border.all(
                width: 1,
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            padding: const EdgeInsets.all(3.0),
            margin: const EdgeInsets.all(15.0),
            child: ListTile(
              title: Text(
                "Lesson ${index + 1}",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "${widget.subTitles![index]}",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(
                Icons.start,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
