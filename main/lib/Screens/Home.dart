import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 61, 105, 147),
      body: 
           Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "Level");
              },
              child: Text("open Levels page")),TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "Tobics");
              },
              child: Text("open tobics page")),
        ],
      ),
    );
  }
}
