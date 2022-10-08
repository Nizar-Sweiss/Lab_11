import 'package:flutter/material.dart';

import '../Components/levelswidget.dart';

class Level extends StatefulWidget {
  const Level({super.key});

  @override
  State<Level> createState() => _LevelState();
}

class _LevelState extends State<Level> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 61, 105, 147),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 61, 105, 147),
        title: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
         
          children: [
            IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, "study");
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
      body: Wrap(
        children: [
          LevelW(number: "1",q: "q1",),
          LevelW(number: "2",isloked: true,),
          LevelW(
            number: "3",isloked: true,
           
          ),
          LevelW(
            number: "4",
            isloked: true,
          ),
          LevelW(
            number: "5",
            isloked: true,
          ),
          LevelW(
            number: "6",
            isloked: true,
          ),
          LevelW(
            number: "7",
            isloked: true,
          ),
          LevelW(
            number: "8",
            isloked: true,
          ),
          LevelW(
            number: "9",
            isloked: true,
          ),
          LevelW(
            number: "10",
            isloked: true,
          ),
          LevelW(
            number: "11",
            isloked: true,
          ),
          LevelW(
            number: "12",
            isloked: true,
          ),
          LevelW(
            number: "13",
            isloked: true,
          ),
          LevelW(
            number: "14",
            isloked: true,
          ),
          LevelW(
            number: "15",
            isloked: true,
          ),
          LevelW(
            number: "16",
            isloked: true,
          ),
          LevelW(
            number: "17",
            isloked: true,
          ),
          LevelW(
            number: "18",
            isloked: true,
          ),
          LevelW(
            number: "19",
            isloked: true,
          ),
          LevelW(
            number: "20",
            isloked: true,
          ),
          LevelW(
            number: "21",
            isloked: true,
          ),
          LevelW(
            number: "22",
            isloked: true,
          ),
          LevelW(
            number: "23",
            isloked: true,
          ),
          LevelW(
            number: "24",
            isloked: true,
          ),
          LevelW(
            number: "25",
            isloked: true,
          ),
          LevelW(
            number: "26",
            isloked: true,
          ),
          LevelW(
            number: "27",
            isloked: true,
          ),
          LevelW(
            number: "28",
            isloked: true,
          ),
          LevelW(
            number: "29",
            isloked: true,
          )
        ],
      ),
    );
  }
}
