import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SettingProvider extends ChangeNotifier{
  ThemeMode themeMode =ThemeMode.light;
  String languge = 'en';
  Future<void> getTheme()async{
   final SharedPreferences prefs = await SharedPreferences.getInstance();
   bool? isDark= prefs.getBool('isDark');
   if(isDark!=null){
      if(isDark==true){
        themeMode=ThemeMode.dark;
      }else{
        themeMode=ThemeMode.light;
      }
      notifyListeners();
    }


  }

  bool get isDark =>themeMode == ThemeMode.dark;
  String get backgroundImagePath => 
  isDark ? 'assets/images/home_dark_background.png': 'assets/images/bg3.png';

  Future<void> changeThemeMode(ThemeMode selectedThemeMode) async {
    themeMode = selectedThemeMode;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
     await prefs.setBool('isDark',themeMode==ThemeMode.dark);

    notifyListeners();
  }
  void changeLanguge (String selectedLanguge){
    languge = selectedLanguge;
    notifyListeners();
  }

}