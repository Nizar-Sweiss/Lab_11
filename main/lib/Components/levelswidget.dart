import 'package:flutter/material.dart';
class LevelW extends StatelessWidget {
   LevelW({required this.number,this.isloked});
String? number;
bool? isloked=false;
  @override
  Widget build(BuildContext context) {
  if(isloked==true){return GestureDetector(onTap: () {
    },child: CircleAvatar(backgroundColor: Color.fromARGB(255, 65, 119, 150),radius: 39,child:Icon(Icons.lock,color: Colors.amber,)),);}
    else{ return 
    GestureDetector(onTap: () {
      // edit the home
      Navigator.popAndPushNamed(context, "Tobics");
    },child: CircleAvatar(backgroundColor: Color.fromARGB(255, 65, 119, 150),radius: 39,child:Text("$number")),);
  }}
}