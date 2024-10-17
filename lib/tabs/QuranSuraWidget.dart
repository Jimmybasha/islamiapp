import 'package:flutter/material.dart';
import 'package:islamiapp/QuranDetails/QuranDetailsArguments.dart';
import 'package:islamiapp/QuranDetails/QuranDetailsScreen.dart';
import 'package:islamiapp/tabs/QuranData.dart';

class QuranSuraWidget extends StatelessWidget {



   int verseNumber;
  String suraName;
  int index;
  QuranSuraWidget({required this.verseNumber,required this.suraName,required this.index});




  @override
  Widget build(BuildContext context) {


    double height = MediaQuery.of(context).size.height;


    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(
            QuranDetailsScreen.routeName,
            arguments:QuranDetailsArguments(suraName: suraName, index: index)
        );
      },
      child: Row(
        children: [
           Expanded(
              child: Text("$verseNumber",
                textAlign: TextAlign.center,
                style:const TextStyle(
                    fontSize: 25
                ) ,
              )
          ),
          Container(
            color: Theme.of(context).colorScheme.primary,
            height: height*(0.07),
            width: 3,
          ),
           Expanded(
              child: Text(suraName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 25
                ) ,
              )
          ),


        ],
      ),
    );

  }
}
