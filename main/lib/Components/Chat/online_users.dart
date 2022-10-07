import 'package:flutter/material.dart';
import 'package:main/Models/OnlineUserModel.dart';

Widget OnlineUser(OnlineUserModel user) => Row(
      children: [
        Container(
          width: 60,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(user.userPFP),
                  ),
                  CircleAvatar(
                    radius: 9,
                    backgroundColor: Color.fromARGB(251, 109, 2, 2),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.only(bottom: 3, end: 2),
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor: Colors.green,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                user.userName,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
