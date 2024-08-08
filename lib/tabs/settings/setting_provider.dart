import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier{
  ThemeMode themeMode =ThemeMode.light;
  String languge = 'en';

  bool get isDark =>themeMode == ThemeMode.dark;
  String get backgroundImagePath => 
  isDark ? 'assets/images/home_dark_background.png': 'assets/images/bg3.png';

  void changeThemeMode(ThemeMode selectedThemeMode){
    themeMode = selectedThemeMode;
    notifyListeners();
  }
  void changeLanguge (String selectedLanguge){
    languge = selectedLanguge;
    notifyListeners();
  }

}