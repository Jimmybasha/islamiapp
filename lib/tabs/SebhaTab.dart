import 'package:flutter/material.dart';
import 'package:islamiapp/Style/DarkTheme/DarkAppStyle.dart';

class SebhaTab extends StatefulWidget {

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  String tasbeehText="سبحان الله";
  int tasbeehCounter=0;
  double rotationAngle=0;
  int invCounter=0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return  Center(
      child: Column(
        children: [
          Stack(
          alignment: Alignment.topCenter,
          children: [
            //head sebha
            Container(
                margin: EdgeInsets.only(left: width*0.15),
                child: Image.asset(
                    DarkAppStyle.isDark?
                    "assets/images/head_sebha_dark.png"
                        :
                    "assets/images/head_sebha_logo.png"
                )
            ),
            //body sebha
            InkWell(
              onTap: (){
                setState(() {
                  tasbeehPress();
                });
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Container(
                  margin: EdgeInsets.only(top: height*0.09),
                  child: Transform.rotate(
                    angle: rotationAngle,
                      child: Image.asset(
                        DarkAppStyle.isDark?
                        "assets/images/body_sebha_dark.png"
                            :
                          "assets/images/body_sebha_logo.png"
                      )
                  )
              ),
            ),
          ],

        ),
          const Text(
            "عدد التسبيحات",
            style:TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 25
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.75),
              borderRadius: BorderRadius.circular(20)
            ),
            height: height*0.1,
             width: width*0.2 ,
            child: Center(
              child: Text("$tasbeehCounter",
                  style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400
              ),
              ),
            ),
          ),


          ElevatedButton(
              onPressed: () {
                setState(() {
                  tasbeehPress();
                });
              },
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
            ),
            child:  Text(tasbeehText,style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 25,
            ),
            ),
          )



        ],
      ),
    );
  }
  tasbeehPress(){
    invCounter++;
    tasbeehCounter++;
    rotationAngle += 0.1;
    if(invCounter==33){
      tasbeehText="الحمد لله";
      tasbeehCounter=0;
    }
    else if(invCounter==66){
      tasbeehText="الله اكبر";
      tasbeehCounter=0;
    }
    else if (invCounter==99){
      tasbeehText="سبحان الله";
      tasbeehCounter=0;
      invCounter=0;
    }
  }

}


