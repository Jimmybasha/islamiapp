import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamiapp/Ahadeth/AhadethDetails/AhadethDetails.dart';
import 'package:islamiapp/Providers/SettingsProvider.dart';
import 'package:islamiapp/QuranDetails/QuranDetailsScreen.dart';
import 'package:islamiapp/Style/DarkTheme/DarkAppStyle.dart';
import 'package:islamiapp/Style/LightTheme/LightAppStyle.dart';
import 'package:islamiapp/home/HomeScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(
      ChangeNotifierProvider(
          create: (context)=>SettingsProvider(),
          child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //added Comment to test gitHub Conflict
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      title: "Flutter Demo",
      theme:LightAppStyle.LighTheme ,
      darkTheme:DarkAppStyle.DarkTheme,
      themeMode: settingsProvider.themeMode,
      routes: {
        Homescreen.routeName:(_)=>Homescreen(),
        QuranDetailsScreen.routeName:(_)=>QuranDetailsScreen(),
        AhadethdetailsScreen.routeName:(_)=>AhadethdetailsScreen(),
      },
      initialRoute: Homescreen.routeName,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("en"),
        Locale("ar"),
      ],
      locale:  Locale(settingsProvider.Language) ,
    );
  }
}

