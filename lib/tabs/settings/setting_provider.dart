import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingProvider extends ChangeNotifier{
  ThemeMode themeMode =ThemeMode.light;
  String languge = 'en';
   SharedPreferences ? prefs ;


  bool get isDark =>themeMode == ThemeMode.dark;
  String get backgroundImagePath => 
  isDark ? 'assets/images/home_dark_background.png': 'assets/images/bg3.png';

  void changeThemeMode(ThemeMode selectedThemeMode){
    themeMode = selectedThemeMode;
    seThemeToCash(themeMode);
    notifyListeners();
  }
  void changeLanguge (String selectedLanguge){
    languge = selectedLanguge;
    notifyListeners();
  }
    Future seThemeToCash(ThemeMode themeMode)async{
    prefs=await SharedPreferences.getInstance();
    String themeName= themeMode==ThemeMode.light?'Light':'Dark';
    await prefs!.setString('theme', themeName);

   }
     loadTheme()async{
  prefs=await SharedPreferences.getInstance();

  final String? themeName = prefs!.getString('theme');
  if(themeName!=null){
    themeMode=themeName=='Light'?ThemeMode.light:ThemeMode.dark;
        notifyListeners();

  }

}
Future<void> getLanguage()async{

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? langu=prefs.getString('lang');
    if(langu!=null){
      if(langu=='en'){
        languge='en';
      }else{
        languge='ar';
      }
    }
    notifyListeners();
  
}
}