
import 'package:flutter/material.dart';

class LightAppStyle{

  static Color lightPrimaryColor= const Color(0xffB7935f);

  static ThemeData LighTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white
      ),
      textTheme:  TextTheme(
        titleMedium: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 25,
          color: Colors.black
        ),
        bodyMedium: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 20,
          color: Colors.black
        ),
        bodySmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
          color: lightPrimaryColor
        )
      ),

      cardTheme:  CardTheme(
        color: Colors.white.withOpacity(0.7),
        surfaceTintColor: Colors.white,
        elevation: 50,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: lightPrimaryColor,
          secondary:  lightPrimaryColor.withOpacity(0.57),
          onPrimary: Colors.white,
          onSecondary: Colors.black,
          tertiary: lightPrimaryColor
      ),
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
              color: Colors.black
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black
          )
      ),
      bottomNavigationBarTheme:  BottomNavigationBarThemeData(
          backgroundColor: lightPrimaryColor,
          unselectedIconTheme: const IconThemeData(
              color: Colors.white,
              size: 30
          ),
          selectedIconTheme: const IconThemeData(
              color: Colors.black,
              size: 30
          ),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white


      ),
      dividerTheme:  DividerThemeData(
        color:  lightPrimaryColor,
        thickness: 3,
      )

  );
}