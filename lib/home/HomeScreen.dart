import 'package:flutter/material.dart';
import 'package:islamiapp/tabs/AhadethTab.dart';
import 'package:islamiapp/tabs/SebhaTab.dart';

import '../Style/DarkTheme/DarkAppStyle.dart';
import '../tabs/QuranTab.dart';
import '../tabs/RadioTab.dart';
import '../tabs/SettingsTab.dart';

class Homescreen extends StatefulWidget {

  static const routeName="home";

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentIndex=0;
  List<Widget> tabs=[
    QuranTab(),
    AhadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),

  ];



  @override
  Widget build(BuildContext context) {
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
          title: const Text("Islamy"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index)=>{
            setState(() {
            currentIndex=index;
            })
          },
          type:BottomNavigationBarType.shifting ,
          currentIndex: currentIndex,
            items:[
              BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon: const ImageIcon(
                   AssetImage("assets/images/icon_quran.png",)
                     ),
                label: "Quran",
              ),
              BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,

                icon: const ImageIcon(
              AssetImage("assets/images/icon_hadeth.png")
              ),
                label: "Ahadeth",
              ),
              BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon: const ImageIcon(
              AssetImage("assets/images/icon_sebha.png")
              ),
                label: "Tasbeeh",
              ),
              BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon: const  ImageIcon(
              AssetImage("assets/images/icon_radio.png")
              ),
                label: "Radio",
              ) ,
              BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon: const  Icon(
                  Icons.settings
              ),
                label: "Settings",
              ),

            ]

        ),

        body:tabs[currentIndex],










      ),
    );
  }
}
