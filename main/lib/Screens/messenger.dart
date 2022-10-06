import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:main/Components/online_users.dart';

void main() {
  runApp(MessengerScreen());
}

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 61, 105, 147),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(251, 109, 2, 2),
          title: Row(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage("images/pfpPic.jpg"),
              ),
              SizedBox(
                width: 15,
              ),
              Text("Chats")
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.black,
                    size: 16,
                  ),
                )),
            IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  child: Icon(
                    Icons.edit,
                    color: Colors.black,
                    size: 16,
                  ),
                )),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(93, 0, 0, 0),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OnlineUser(
              friendPFP: "images/pfpPic.jpg",
              friendName: 'Test 1 ',
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("images/pfpPic.jpg"),
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Color.fromARGB(251, 109, 2, 2),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3, end: 2),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name Two",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "THE MESSAGE IS HERE ",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Time",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("images/pfpPic.jpg"),
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Color.fromARGB(251, 109, 2, 2),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3, end: 2),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name Two",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "THE MESSAGE IS HERE ",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Time",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("images/pfpPic.jpg"),
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Color.fromARGB(251, 109, 2, 2),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3, end: 2),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                  "Name TwoName TwoName TwoName TwoName TwoName TwoName Two",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "THE MESSAGE IS HERE ",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Time",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
