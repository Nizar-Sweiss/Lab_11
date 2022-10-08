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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "Home");
                  },
                  icon: Icon(Icons.arrow_back)),
              Text("LEVELS"),
              // SizedBox(
              //   width: 193,
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
            child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 65, 110, 150),
              border: Border.all(color: Colors.white)),
          width: 300,
          height: 600,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Tobicsw(
                      title: "Grammer Course",
                      imageUrl: "images/1.webp",
                      myRout: 'Grammar_Course',
                    ),
                    Tobicsw(
                      title: "Listening Course",
                      imageUrl: "images/2.webp",
                      myRout: 'Listening_Course',
                    ),
                    Tobicsw(
                      title: "Vocabulary Course ",
                      imageUrl: "images/3.jpg",
                      myRout: 'Vocabulary_Course',
                    )
                  ],
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.popAndPushNamed(context, "Quizes");
                },
                icon: Icon(Icons.start),
                label: Text("Test yourself "),
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30),
                  ),
                  backgroundColor: Color.fromARGB(255, 35, 86, 133),
                ),
              )
            ],
          ),

          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     children: [
          //       Tobicsw(
          //         title: "writing corse",
          //         imageurl: "images/4.png",
          //         myRout: '',
          //       ),
          //       Tobicsw(
          //         title: "speaking corse",
          //         imageurl: "images/5.jpg",
          //         myRout: '',
          //       ),
          //     ],
          //   ),
          // )
        )));
  }
}
