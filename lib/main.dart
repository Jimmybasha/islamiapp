import 'package:flutter/material.dart';
import 'package:islamiapp/Ahadeth/AhadethDetails/AhadethDetails.dart';
import 'package:islamiapp/QuranDetails/QuranDetailsScreen.dart';
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
      theme:ThemeData(
        cardTheme:  CardTheme(
          color: Colors.white.withOpacity(0.7),
          surfaceTintColor: Colors.white,
          elevation: 50,


        ),

        scaffoldBackgroundColor: Colors.transparent,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary:const Color(0xffB7935f),
          secondary: const Color(0xffB7935f).withOpacity(0.57),
          onPrimary: Colors.white,
          onSecondary: Colors.black
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            color: Colors.black
          )
        ),
       bottomNavigationBarTheme: const BottomNavigationBarThemeData(
         backgroundColor: Color(0xffB7935f),
         unselectedIconTheme: IconThemeData(
           color: Colors.white,
           size: 30
         ),
         selectedIconTheme: IconThemeData(

           color: Colors.black,
           size: 30
         ),
           selectedItemColor: Colors.black,
         unselectedItemColor: Colors.white


       ),
        dividerTheme: const  DividerThemeData(
          color:  Color(0xffB7935f),
          thickness: 3,
     )

      ) ,
      routes: {
        Homescreen.routeName:(_)=>Homescreen(),
        QuranDetailsScreen.routeName:(_)=>QuranDetailsScreen(),
        AhadethdetailsScreen.routeName:(_)=>AhadethdetailsScreen(),


      },
      initialRoute: Homescreen.routeName,
    );
  }
}

