import 'package:flutter/material.dart';
import 'package:islamiapp/Ahadeth/Hadeth.dart';

import '../../Style/DarkTheme/DarkAppStyle.dart';

class AhadethdetailsScreen extends StatelessWidget {

  static const routeName = "AhadethDetailsScreen";


  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)!.settings.arguments as Hadeth ;
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
      appBar: AppBar(
        title: Text(args.Title),
      ),
        body: Column(
          children: [
            Expanded(
              child: Card(
                margin: const EdgeInsets.all(16),
                child:  args.Content.isEmpty

                    ? const Center(
                  child: CircularProgressIndicator(),
                )
                    :
                SingleChildScrollView(

                  child: Text(
                    args.Content,
                   style: Theme.of(context).textTheme.bodyMedium
                  ),
                )

                ),
            ),
          ],
        ),

        ) ,
    );

  }
}
