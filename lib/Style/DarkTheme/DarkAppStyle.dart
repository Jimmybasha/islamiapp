
import 'package:flutter/material.dart';

class DarkAppStyle{

  static Color DarkPrimaryColor = const Color(0xff141A2E);
  static bool isDark = true;
  static Color DarkSecondaryColor = const Color(0xffFACC1D);
  static ThemeData DarkTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: DarkPrimaryColor
      ),
      textTheme:  TextTheme(
          titleMedium: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25,
              color: Colors.white
          ),
          bodyMedium: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 20,
          color: DarkSecondaryColor
      ),
          bodySmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: DarkSecondaryColor
      )
      ),
      cardTheme:  CardTheme(
        color: DarkPrimaryColor.withOpacity(0.8),
        surfaceTintColor: DarkPrimaryColor.withOpacity(0.5),
        elevation: 50,


      ),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: DarkAppStyle.DarkPrimaryColor,
          secondary: DarkAppStyle.DarkSecondaryColor,
          onPrimary: Colors.white,
          onSecondary: Colors.black,
          tertiary: DarkSecondaryColor
      ),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
      ),
      bottomNavigationBarTheme:  BottomNavigationBarThemeData(
          backgroundColor: DarkAppStyle.DarkPrimaryColor,
          unselectedIconTheme: const IconThemeData(
              color: Colors.white,
              size: 30
          ),
          selectedIconTheme:  IconThemeData(
              color: DarkSecondaryColor,
              size: 30
          ),
          selectedItemColor: DarkSecondaryColor,
          unselectedItemColor: Colors.white


      ),
      dividerTheme:   DividerThemeData(
        color:  DarkAppStyle.DarkSecondaryColor,
        thickness: 3,
      )

  );

}