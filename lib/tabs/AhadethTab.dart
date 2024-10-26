import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/Ahadeth/AhadethDetails/AhadethDetails.dart';
import 'package:islamiapp/Ahadeth/Hadeth.dart';

class AhadethTab extends StatefulWidget {

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {

  List<Hadeth> ahadethList = [

  ];

  readAhadethFile()async{

    String fileContent = await rootBundle.loadString("assets/ahadethAssets/ahadeth.txt");

    List<String> ahadethFileData = fileContent.split("#");

    for(var x in ahadethFileData){


      //Used trim to remove the extra spaces bcz it's counted as a new line
      List<String> ahadethLines = x.trim().split("\n");


      String hadethTitle = ahadethLines[0];

      ahadethLines.removeAt(0);

      String hadethContent = ahadethLines.join(" ");

      ahadethList.add(Hadeth(hadethTitle,hadethContent));

    }

    setState(() {

    });


  }
  @override
  void initState() {
    // TODO: implement initState
    readAhadethFile();
  }

  @override
  Widget build(BuildContext context) {

    return
      ahadethList.isEmpty
          ? const Center(
        child: CircularProgressIndicator(),
      )
          : Column(
      children: [
        Expanded(
            child: Image.asset("assets/images/hadeth_logo.png")
        )
        ,
       const Divider(),
         Text("Ahadeth",
          style:Theme.of(context).textTheme.titleMedium,
        ),
        const Divider(),
        Expanded(
          flex: 2,
          child:  ListView.separated(
              itemBuilder: (context, index) => InkWell(
                onTap: (){
                      Navigator.of(context).pushNamed(AhadethdetailsScreen.routeName,arguments:ahadethList[index]);
                },
                child: Text(
                  ahadethList[index].Title,
                textAlign: TextAlign.center,
                  style:Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: ahadethList.length
          ),
        )
      ],
    );
  }
}
