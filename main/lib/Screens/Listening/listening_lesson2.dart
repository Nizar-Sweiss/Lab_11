import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:async';

import 'package:lab011/Screens/Listening/listeningLessons.dart';

class ListeningLesson2 extends StatelessWidget {
  const ListeningLesson2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GrammerLesson2Screen(title: 'Second Scenario'),
    );
  }
}

class GrammerLesson2Screen extends StatefulWidget {
  const GrammerLesson2Screen({super.key, required this.title});

  final String title;

  @override
  State<GrammerLesson2Screen> createState() => _GrammerLesson2ScreenState();
}

class _GrammerLesson2ScreenState extends State<GrammerLesson2Screen> {
  final player = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  }

  @override
  void initState() {
    super.initState();

    player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    player.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    player.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 61, 105, 147),
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.orange),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => ListeningLessons())),
        ),
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(13),
            alignment: Alignment.center,
            child: Text(
              maxLines: 2,
              "Listening English Lesson 2 \n Jessica's First Day of School.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ElevatedButton(
                //   onPressed: () {
                //     player.play(AssetSource('theme_01.mp3'));
                //   },
                //   child: const Text('Play Audio'),
                // ),
                // ElevatedButton(
                //     onPressed: () {
                //       player.stop();
                //     },
                //     child: const Text('Stop Audio')),
                // ElevatedButton(
                //     onPressed: () {
                //       player.pause();
                //     },
                //     child: const Text('Pause ')),
                // ElevatedButton(
                //     onPressed: () {
                //       player.resume();
                //     },
                //     child: const Text('Resume')),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 23, 55, 84),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      border: Border.all(
                          width: 1, //
                          color: Colors.white),
                    ),
                    child: Column(
                      children: [
                        Slider(
                          activeColor: Colors.white,
                          min: 0,
                          max: duration.inSeconds.toDouble(),
                          value: position.inSeconds.toDouble(),
                          onChanged: (value) {
                            final position = Duration(seconds: value.toInt());
                            player.seek(position);
                            player.resume();
                          },
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 10, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                formatTime(position.inSeconds),
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(formatTime((duration - position).inSeconds),
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                child: IconButton(
                                  icon: Icon(
                                    isPlaying ? Icons.pause : Icons.play_arrow,
                                  ),
                                  onPressed: () {
                                    if (isPlaying) {
                                      player.pause();
                                    } else {
                                      player
                                          .play(AssetSource('SecondAudio.mp3'));
                                    }
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              CircleAvatar(
                                radius: 25,
                                child: IconButton(
                                  icon: const Icon(Icons.stop),
                                  onPressed: () {
                                    player.stop();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Today is Jessica's first day of kindergarten.  Jessica and her parents walk to school.  Jessica's Mom walks with her to her classroom.  Jessica meets her teacher.  His name is Mr. Parker.  The school bell rings at 8.45 A.M..  Jessica hugs and kisses her Mom goodbye.  Jessica's Mom says I love you.  At 9.00 A.M., Jessica stands for the National anthem.  Mr. Parker calls out children's names.  Each child yells back Here.  Mr. Parker teaches them about letters.  Mr. Parker teaches them about numbers.  At 10:15 A.M. the students have recess.  Recess is fun.  The students get to play and eat.  At 10:30 A.M. the students go to gym class.  At 11:15 A.M. the students return to Mr. Parker's classroom.  Mr. Parker tells the students to sit on the carpet.  Mr. Parker reads the students a story.  Mr. Parker teaches the students a song.  The lunch bell rings.  Jessica's first day of school is over.",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
