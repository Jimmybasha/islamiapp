import 'package:flutter/material.dart';
import 'package:islamiapp/Ahadeth/AhadethDetails/AhadethDetails.dart';
import 'package:islamiapp/QuranDetails/QuranDetailsScreen.dart';
import 'package:islamiapp/Style/DarkTheme/DarkAppStyle.dart';
import 'package:islamiapp/Style/LightTheme/LightAppStyle.dart';
import 'package:islamiapp/home/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme:LightAppStyle.LighTheme ,
      darkTheme: DarkAppStyle.DarkTheme,
      themeMode: ThemeMode.dark,
      routes: {
        Homescreen.routeName:(_)=>Homescreen(),
        QuranDetailsScreen.routeName:(_)=>QuranDetailsScreen(),
        AhadethdetailsScreen.routeName:(_)=>AhadethdetailsScreen(),


      },
      initialRoute: Homescreen.routeName,
    );
  }
}

