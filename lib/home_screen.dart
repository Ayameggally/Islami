import 'package:flutter/material.dart';
import 'package:islami/tabs/hadeth/hadeth_tab.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/radio/radio_tab.dart';
import 'package:islami/tabs/sebha/sebha_tab.dart';
import 'package:islami/tabs/settings/setting_provider.dart';
import 'package:islami/tabs/settings/settings_tab.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName ='/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    int currentIndex=0;
    List<Widget>tabs =[
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider =Provider.of<SettingProvider>(context);
  
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            settingProvider.themeMode == ThemeMode.light
            ?'assets/images/bg3.png'
            : 'assets/images/home_dark_background.png'),
          fit: BoxFit.fill,
      ),
    ),
    child:Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
          title: Text(AppLocalizations.of(context)!.islamic),
        ),
      body:  tabs[currentIndex],
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
            currentIndex = index;
            setState(() {});
          }, 
         items:[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/quran.png'),
        ),
              label:AppLocalizations.of(context)!. quran,
            
        ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/quran-quran-svgrepo-com.png'),
              ),
              label:AppLocalizations.of(context)!.hadeth,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/sebha_blue.png'),
              ),
              label: AppLocalizations.of(context)!.sebha,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/radio_blue.png'),
              ),
              label:AppLocalizations.of(context)!.radio ,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined
              ),
              label: AppLocalizations.of(context)!.setting,
            ),
        ],
       ),
    ) ,
    );
  }
}
