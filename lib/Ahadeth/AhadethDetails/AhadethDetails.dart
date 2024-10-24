import 'package:flutter/material.dart';
import 'package:islamiapp/Ahadeth/Hadeth.dart';

class AhadethdetailsScreen extends StatelessWidget {

  static const routeName = "AhadethDetailsScreen";


  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)!.settings.arguments as Hadeth ;
    return Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/default_bg.png"),
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
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                    ),
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
