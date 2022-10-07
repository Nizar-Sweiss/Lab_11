import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:main/Components/lesson1Para.dart';

class Lesson1 extends StatefulWidget {
  const Lesson1({super.key});

  @override
  State<Lesson1> createState() => _Lesson1State();
}

class _Lesson1State extends State<Lesson1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 1 - Adjectives"),
        backgroundColor: Color.fromARGB(255, 61, 105, 147),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromARGB(255, 61, 105, 147),
          child: ListView(
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                "Whate are Adjectives ?",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Divider(
                color: Colors.white,
              ),
              LessonPara(
                  paraText:
                      "An adjective is a word (such as bitter, dark, sharp, tall, etc.) that describes or modifies a noun (person, place, thing, or animal) or pronoun in a sentence. As a modifier of a noun, an adjective gives information about the noun such as its size (big), age (old), shape (oval), colour (blue), where the noun comes from (Italian), what material (stone, plastic) it is made of and for what purpose it is used for (cutting tool)."),
              Text(
                "Kinds Of Adjectives ?",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Divider(
                color: Colors.white,
              ),
              LessonPara(
                  paraText:
                      'There are different kinds of adjectives which include the following:\n'
                      'Demonstrative adjectives are this, that, these, and those. We use them to point out specific people or things.\n'
                      'Descriptive adjectives are the most common adjectives. We use them to describe nouns.\n'
                      'Interrogative adjectives are words such as what, which, and whose that modify nouns. We use an interrogative adjective with a noun to ask a question.\n'
                      'Indefinite adjectives are words like all, any, each, few, many, much, most, several, and some that describe nouns in a general or non-specific manner.\n'
                      'Possessive adjectives modify nouns or noun phrases and are words such as my, your, his, her, its, our, and their which we use before nouns to show possession.\n')
            ],
          )),
    );
  }
}
