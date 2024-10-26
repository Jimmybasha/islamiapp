import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/QuranDetails/QuranDetailsArguments.dart';
import 'package:islamiapp/QuranDetails/VerseWidget.dart';
import 'package:islamiapp/Style/DarkTheme/DarkAppStyle.dart';

class QuranDetailsScreen extends StatefulWidget {

  static const routeName = "QuranDetails";

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();

}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {

  List<String> lines =[];

  //Add Development Branch
    loadFile(int index)async {

     String fileContent = await rootBundle.loadString("assets/quranAssets/${index+1}.txt");

     lines = fileContent.split("\n");

      setState(() {

      });

  }

  @override
  Widget build(BuildContext context) {

    QuranDetailsArguments args = ModalRoute.of(context)?.settings.arguments as QuranDetailsArguments;

    loadFile(args.index);

    return Container(

      decoration:  BoxDecoration(

          image: DecorationImage(

              image: AssetImage(
                DarkAppStyle.isDark
                    ?"assets/images/dark_bg.png"
                    :
                  "assets/images/default_bg.png"
              ),

              fit:BoxFit.fill
          )
      ),

      child: Scaffold(

        backgroundColor: Colors.transparent,

        appBar:AppBar(

          title:  Text(args.suraName,),
        ),

        body: Card(

          margin: const EdgeInsets.all(16),

           child:  lines.isEmpty

              ? const Center(child: CircularProgressIndicator(),)

              :ListView.separated(

            itemBuilder: (context, index) => VerseWidget(

                verse: lines[index],

                verseNumber: index+1

            ),

            itemCount: lines.length,

            separatorBuilder: (BuildContext context, int index)=> const Divider(),

          ),

        )

        )



    );
  }
}
