import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SettingsProvider extends ChangeNotifier{

SettingsProvider(){
  getTheme();
  getLanguage();
}

  ThemeMode themeMode = ThemeMode.light;
  String Language ="en";

  //SetTheme to Get the Data sent when the user defines his unique settings
  //To Get it by another Function

   Future<void> setTheme(ThemeMode theme)async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if(theme==ThemeMode.light){
      await prefs.setString("keyTheme","Light");
    }else{
      await prefs.setString("keyTheme","Dark");
    }
  }


  //Data Returned from this function used to Initialize the data saved from the user last time
  Future<void> getTheme()async{
     final SharedPreferences prefs = await SharedPreferences.getInstance();
      String cachedTheme = prefs.getString("keyTheme")??"Light";

      if(cachedTheme=="Light"){
        themeMode=ThemeMode.light;
      }else{
        themeMode=ThemeMode.dark;
      }
  }

  Future<void> setLanguage(String language)async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if(language=="en"){
      await prefs.setString("keyLanguage","en");
    }else{
      await prefs.setString("keyLanguage","ar");
    }
  }

  Future<void> getLanguage()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String cachedLanguage = prefs.getString("keyLanguage")??"en";
    if(cachedLanguage=="en"){
      Language="en";
    }else{
      Language="ar";
    }
  }



  changeTheme(ThemeMode newTheme){
    if(!(themeMode==newTheme)){
    themeMode=newTheme;
    notifyListeners();
    setTheme(themeMode);

    }
  }

  changeLanguage(String newLanguage){

    if(!(Language==newLanguage)){
      Language=newLanguage;
      notifyListeners();
      setLanguage(newLanguage);
    }

  }

}