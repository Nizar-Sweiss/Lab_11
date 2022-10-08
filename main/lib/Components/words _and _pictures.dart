import 'package:flutter/material.dart';

class WordAndPicture extends StatelessWidget {
  WordAndPicture({required this.imgTitle, required this.imgPath});
  String? imgTitle;
  String? imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 80, 108, 135),
        border: Border.all(
          width: 1,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      padding: const EdgeInsets.all(3.0),
      margin: const EdgeInsets.all(15.0),
      child: ListTile(
        title: Text(
          "$imgTitle",
          style: TextStyle(color: Colors.white),
        ),
        trailing: Image(
          image: AssetImage("$imgPath"),
        ),
      ),
    );
  }
}
