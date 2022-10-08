import 'package:flutter/material.dart';
import 'package:lab011/Components/words%20_and%20_pictures.dart';

class Tobicsw extends StatelessWidget {
  Tobicsw({required this.title, required this.imageUrl, required this.myRout});
  String? title;
  String? imageUrl;
  String? myRout;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
            onTap: () {
              Navigator.popAndPushNamed(context, "$myRout");
            },
            child: WordAndPicture(
              imgPath: '$imageUrl',
              imgTitle: "$title",
            )),
      ],
    );
  }
}
