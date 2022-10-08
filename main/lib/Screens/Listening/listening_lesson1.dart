import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:async';

class ListeningLesson1 extends StatelessWidget {
  const ListeningLesson1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GrammerLesson1Screen(title: 'First Scenario'),
    );
  }
}

class GrammerLesson1Screen extends StatefulWidget {
  const GrammerLesson1Screen({super.key, required this.title});

  final String title;

  @override
  State<GrammerLesson1Screen> createState() => _GrammerLesson1ScreenState();
}

class _GrammerLesson1ScreenState extends State<GrammerLesson1Screen> {
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
        automaticallyImplyLeading: true,
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(13),
            alignment: Alignment.center,
            child: Text(
              maxLines: 2,
              "Listening English Lesson 1: First Snow Fall.",
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
                                          .play(AssetSource('FirstAudio.mp3'));
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
                    "Today is November 26th.  It snowed all day today.  The snow is beautiful.   The snow finally stopped.   My sister and I are excited.   My Mom doesn't like the snow.   My Mom has to shovel the drive way.   My sister and I get to play.   I put on my hat and mittens.   My Mom puts on my scarf.   My Mom zippers my jacket.   My sister puts on her hat and mittens.   My Mom puts on her scarf.   My Mom zippers her jacket.   My sister and I go outside.   We begin to make a snow man.   My Mom starts to shovel the snow.   My sister and I make snow angels.   My sister and I throw snowballs.   It starts to snow again.   We go inside for hot chocolate.",
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
