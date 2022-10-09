import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab011/Components/words%20_and%20_pictures.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tobicsw extends StatelessWidget {
  Tobicsw({required this.title, required this.myRout, required this.topicIcon});
  String? title;

  FaIcon? topicIcon;
  String? myRout;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.popAndPushNamed(context, "$myRout");
          },
          child: Container(
            height: 75,
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
                "$title",
                style: GoogleFonts.alegreyaSansSc(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              trailing: topicIcon,
            ),
          ),
          // child: WordAndPicture(
          //   imgPath: '$imageUrl',
          //   imgTitle: "$title",
          // )),
        )
      ],
    );
  }
}
