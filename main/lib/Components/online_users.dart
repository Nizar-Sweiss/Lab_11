import 'package:flutter/material.dart';

class OnlineUser extends StatefulWidget {
  final String friendPFP;
  final String friendName;
  const OnlineUser(
      {super.key, required this.friendPFP, required this.friendName});

  @override
  State<OnlineUser> createState() => _OnlineUserState();
}

class _OnlineUserState extends State<OnlineUser> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
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
                      backgroundImage: AssetImage(widget.friendPFP),
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
                  widget.friendName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
