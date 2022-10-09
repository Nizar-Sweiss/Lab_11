import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'Components/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 61, 105, 147),
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Color.fromARGB(255, 61, 105, 147),
      ),
      drawer:
          //this class in components
          MyDrawer(),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 30, right: 30, top: 20),
        child: ListView(children: [
          CircleAvatar(
            child: Lottie.asset('images/pfp.json'),
            backgroundColor: Color.fromARGB(81, 255, 255, 255),
            radius: 90,
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "Alex O'Brian",
              style: GoogleFonts.acme(color: Colors.white, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 28, 59, 88),
                border: Border.all(color: Colors.white70),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "Tobics");
                      },
                      child: CircleAvatar(
                        child: Lottie.asset('images/Study.json'),
                        backgroundColor: Color.fromARGB(0, 255, 255, 255),
                        radius: 40,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Study",
                      style:
                          GoogleFonts.acme(color: Colors.white, fontSize: 25),
                    )
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    //        setState(() {
                    //   Navigator.of(context)
                    //       .push(MaterialPageRoute(builder: (context) {
                    //     return LoginPage();
                    //   }));
                    // });
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        child: Lottie.asset('images/Review.json'),
                        backgroundColor: Color.fromARGB(0, 255, 255, 255),
                        radius: 44,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Review",
                        style:
                            GoogleFonts.acme(color: Colors.white, fontSize: 25),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "massenger");
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        child: Lottie.asset('images/Chat.json'),
                        backgroundColor: Color.fromARGB(0, 41, 34, 34),
                        radius: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Chat",
                        style:
                            GoogleFonts.acme(color: Colors.white, fontSize: 25),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white60),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            height: 50,
            padding: EdgeInsets.only(bottom: 2),
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 61, 105, 147),
                  ),
                ),
                onPressed: () {
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) {
                  //   return Home();
                  // }));
                },
                child: Text(
                  "Learn how to use app",
                  style: GoogleFonts.acme(fontSize: 20, color: Colors.white60),
                )),
          ),
          // Container(
          //   margin: EdgeInsets.only(top: 10),
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.all(Radius.circular(5))),
          //   height: 50,
          //   child: ElevatedButton(
          //     style: ButtonStyle(
          //       backgroundColor: MaterialStateProperty.all(
          //         Colors.white,
          //       ),
          //     ),
          //     onPressed: () {
          //       // Navigator.of(context)
          //       //     .push(MaterialPageRoute(builder: (context) {
          //       //   return Home();
          //       // }));
          //     },
          //     child: Text(
          //       "Get a certificate",
          //       style: GoogleFonts.acme(fontSize: 20, color: Colors.black87),
          //     ),
          //   ),
          // )
        ]),
      ),
    );
  }
}
