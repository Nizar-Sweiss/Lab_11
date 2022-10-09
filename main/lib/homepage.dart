import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            radius: 50,
            foregroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmBYZyIHeO76dzASleF3GYpvC9rXdFQ_hO4raakU2Ge9v89ag6ThrHwWgTDtlWb4663Rs&usqp=CAU"),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "Bashar-qawasmi",
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
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(context, "Tobics");
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        foregroundImage: NetworkImage(
                            "https://thumbs.dreamstime.com/b/case-study-cdr-185723046.jpg"),
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
                        backgroundColor: Colors.white,
                        radius: 30,
                        foregroundImage: NetworkImage(
                            "https://cdn-icons-png.flaticon.com/512/2701/2701190.png"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "rivew",
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
                    Navigator.popAndPushNamed(context, "massenger");
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        foregroundImage: NetworkImage(
                            "https://static.vecteezy.com/system/resources/previews/004/879/666/original/chat-message-icon-on-a-white-background-free-vector.jpg"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "chat",
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
