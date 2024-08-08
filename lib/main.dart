import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/tabs/hadeth/hadeth_details_screen.dart';
import 'package:islami/tabs/quran/sura_details_screen.dart';
import 'package:islami/tabs/settings/setting_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp (ChangeNotifierProvider(
    create: (_) => SettingProvider() ,
    child: IslamiApp()));
}

class IslamiApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider=Provider.of<SettingProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      routes: {
        HomeScreen.routeName:(_) => HomeScreen(),
        SuraDetailsScreen.routeName:(_) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName:(_) => HadethDetailsScreen(),


      },
      theme: AppTheme.lightTheme ,
      darkTheme: AppTheme.darkTheme,
      themeMode: settingProvider.themeMode ,
      
       );
  }
}