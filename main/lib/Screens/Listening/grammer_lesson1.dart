import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:async';

class GrammerLesson1 extends StatelessWidget {
  const GrammerLesson1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GrammerLesson1Screen(title: 'Audio Player'),
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
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
                        player.play(AssetSource('FirstAudio.mp3'));
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
            Slider(
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
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(formatTime(position.inSeconds)),
                  Text(formatTime((duration - position).inSeconds)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
