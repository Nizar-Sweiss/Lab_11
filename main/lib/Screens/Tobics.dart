import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Components/TobicsWidget.dart';
import '../Components/home_button.dart';

class Tobics extends StatelessWidget {
  const Tobics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 61, 105, 147),
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 61, 105, 147),
            title: Text("Topics"),
            centerTitle: true,
            actions: [
              HomeButton(context),
            ]),
        body: Center(
            child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 65, 110, 150),
              border: Border.all(color: Colors.white)),
          width: 300,
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Tobicsw(
                      title: "Grammer Course",
                      myRout: 'Grammar_Course',
                      topicIcon: FaIcon(
                        FontAwesomeIcons.spellCheck,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Tobicsw(
                      title: "Listening Course",
                      topicIcon: FaIcon(
                        FontAwesomeIcons.headphones,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      myRout: 'Listening_Course',
                    ),
                    Tobicsw(
                      title: "Vocabulary Course ",
                      topicIcon: FaIcon(
                        FontAwesomeIcons.v,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      myRout: 'Vocabulary_Course',
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 30),
                alignment: Alignment.bottomCenter,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "Quizes");
                  },
                  icon: FaIcon(FontAwesomeIcons.arrowRight),
                  label: Text(
                    "Test yourself ",
                    style:
                        GoogleFonts.adamina(color: Colors.white, fontSize: 23),
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: Color.fromARGB(255, 255, 255, 255),
                    elevation: 15,
                    fixedSize: Size(300, 40),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30),
                    ),
                    backgroundColor: Color.fromARGB(255, 35, 86, 133),
                  ),
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
