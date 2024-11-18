import 'package:flutter/material.dart';
import 'package:islamiapp/Providers/SettingsProvider.dart';
import 'package:islamiapp/tabs/AhadethTab.dart';
import 'package:islamiapp/tabs/SebhaTab.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:provider/provider.dart';


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
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                settingsProvider.themeMode==ThemeMode.dark
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
          title:  Text(AppLocalizations.of(context)!.islami),
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
                icon:  ImageIcon(
                   AssetImage("assets/images/icon_quran.png",)
                     ),
                label: AppLocalizations.of(context)!.quran,
              ),
              BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,

                icon:  const ImageIcon(
              AssetImage("assets/images/icon_hadeth.png")
              ),
                label: AppLocalizations.of(context)!.ahadeth,
              ),
              BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon: const ImageIcon(
              AssetImage("assets/images/icon_sebha.png")
              ),
                label: AppLocalizations.of(context)!.tasbeeh,
              ),
              BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon: const  ImageIcon(
              AssetImage("assets/images/icon_radio.png")
              ),
                label: AppLocalizations.of(context)!.radio,
              ) ,
              BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon: const  Icon(
                  Icons.settings
              ),
                label: AppLocalizations.of(context)!.settings,
              ),

            ]

        ),

        body:tabs[currentIndex],










      ),
    );
  }
}
