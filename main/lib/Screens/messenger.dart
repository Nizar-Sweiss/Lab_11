import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:main/Components/online_users.dart';
import 'package:main/Components/user_messeges.dart';

import '../Components/clean_rounded_search_bar.dart';
import '../Models/OnlineUserModel.dart';

class MessengerScreen extends StatefulWidget {
  const MessengerScreen({super.key});

  @override
  State<MessengerScreen> createState() => _MessengerScreenState();
}

List<OnlineUserModel> users = [
  OnlineUserModel(
      userMessege: 'Say hi', userName: 'Test1', userPFP: "images/pfpPic.jpg"),
  OnlineUserModel(
      userMessege: 'Say hi', userName: 'Test2', userPFP: "images/pfpPic.jpg"),
  OnlineUserModel(
      userMessege: 'Say hi', userName: 'Test3', userPFP: "images/pfpPic.jpg"),
  OnlineUserModel(
      userMessege: 'Say hi', userName: 'Test4', userPFP: "images/pfpPic.jpg"),
  OnlineUserModel(
      userMessege: 'Say hi', userName: 'Test5', userPFP: "images/pfpPic.jpg"),
  OnlineUserModel(
      userMessege: 'Say hi', userName: 'Test6', userPFP: "images/pfpPic.jpg"),
  OnlineUserModel(
      userMessege: 'Say hi', userName: 'Test7', userPFP: "images/pfpPic.jpg"),
];

class _MessengerScreenState extends State<MessengerScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 61, 105, 147),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 37, 65, 91),
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
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              RoundedSearchInput(
                hintText: "Search",
                textController: TextEditingController(),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => OnlineUser(users[index]),
                  itemCount: users.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    width: 15,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => UserMesseges(users[index]),
                itemCount: users.length,
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  height: 20,
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
