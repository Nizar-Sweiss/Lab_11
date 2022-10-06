import 'package:flutter/material.dart';

import '../Components/TobicsWidget.dart';

class Tobics extends StatelessWidget {
  const Tobics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 61, 105, 147),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 61, 105, 147),
          title: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "Home");
                  },
                  icon: Icon(Icons.arrow_back)),
              Text("LEVELS"),
              SizedBox(
                width: 193,
              ),
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
            child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 65, 110, 150),
              border: Border.all(color: Colors.white)),
          width: 300,
          height: 600,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Tobicsw(
                      title: "learn grammer",
                      imageurl: "images/1.webp",
                    ),
                    Tobicsw(
                      title: "listening course",
                      imageurl: "images/2.webp",
                    ),
                    Tobicsw(
                      title: "reading corse",
                      imageurl: "images/3.jpg",
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Tobicsw(title: "writing corse", imageurl: "images/4.png"),
                    Tobicsw(title: "speaking corse", imageurl: "images/5.jpg"),
                    Tobicsw(title: "need help", imageurl: "images/6.jpg")
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
