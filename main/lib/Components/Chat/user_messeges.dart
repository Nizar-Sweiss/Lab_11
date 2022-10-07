import 'package:flutter/material.dart';

import '../../Models/OnlineUserModel.dart';

Widget UserMesseges(OnlineUserModel user) => Expanded(
      child: Column(
        children: [
          Row(
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
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.userName,
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
                            user.userMessege,
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
        ],
      ),
    );
