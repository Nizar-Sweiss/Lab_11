import 'package:flutter/material.dart';

class Study extends StatelessWidget {
  const Study({super.key});

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
                  Navigator.popAndPushNamed(context, "Home");
                },
                icon: Icon(Icons.arrow_back)),
            Text("study"),
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
      body: Center(
        child: Container(decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 77, 121, 158),),borderRadius: BorderRadius.all(Radius.circular(300))),
        width:300 ,height: 300,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton.icon(
                onPressed: () {Navigator.popAndPushNamed(context, "Lessons");},
                icon: Icon(Icons.play_lesson_sharp),
                label: Text(
                  "Lessons",
                  style: TextStyle(fontSize: 15),
                )),Divider(height:15 ,), ElevatedButton.icon(
                onPressed: () {Navigator.popAndPushNamed(context, "Level");},
                icon: Icon(Icons.quiz),
                label: Text(
                  "Test your English",
                  style: TextStyle(fontSize: 15),
                ))
          ]),
        ),
      ),
    );
  }
}
