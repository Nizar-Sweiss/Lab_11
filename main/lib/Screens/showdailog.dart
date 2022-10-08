import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowDailogWhenWrongPassorUser {
  ShowDailogWhenWrongPassorUser(context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: 85,
              child: Column(
                children: [
                  Text("username or password wrong...  || missing value",
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 100, top: 10),
                    child: Row(
                      children: [
                        Icon(Icons.add_reaction_outlined),
                        Icon(Icons.add_reaction_outlined),
                        Icon(Icons.add_reaction_outlined)
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
