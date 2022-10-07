import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');

class Lesson3 extends StatefulWidget {
  const Lesson3({super.key});

  @override
  State<Lesson3> createState() => _Lesson3State();
}

class _Lesson3State extends State<Lesson3> {
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 3 - Family"),
        backgroundColor: Color.fromARGB(255, 61, 105, 147),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 61, 105, 147),
        child: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              "Please watch the next video",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Divider(
              color: Colors.white,
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    _launchUrl;
                  });
                },
                icon: Icon(Icons.youtube_searched_for),
                label: Text("Watch Now"))
          ],
        ),
      ),
    );
  }
}
