import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  String verse;
  int verseNumber;

  VerseWidget({required this.verse,required this.verseNumber});


  Widget build(BuildContext context) {
    // TODO: implement build
    return Text("$verse ($verseNumber)",
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: const TextStyle(
      fontSize: 25,
        fontWeight: FontWeight.w400,

    ),);
  }

}