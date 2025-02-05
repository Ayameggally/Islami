import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/settings/setting_provider.dart';
import 'package:islami/widget/loading_indecator.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName= '/sura-details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String>ayat = [
    // 'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ',
    // 'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ',
    // ' الرَّحْمَنِ الرَّحِيمِ',
    // ' مَالِكِ يَوْمِ الدِّينِ',
    // ' إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ',
    // ' اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ',
    // ' صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّين',
  ];
   late SuraDetailsArgs args;

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);

    args = ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    if(ayat.isEmpty){
    loadSuraFile();
    }
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
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.suraName),
        ),
        body: Container(
          padding: EdgeInsets.all(24),
          margin: EdgeInsets.symmetric(
            vertical:MediaQuery.of(context).size.height *0.06,
            horizontal: MediaQuery.of(context).size.width*0.07,
            ) ,
          decoration: BoxDecoration(
            color: settingProvider.isDark
             ? AppTheme.darkPrimary : AppTheme.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child:ayat.isEmpty  
          ?LoadingIndicaror()
           :ListView.builder(
            itemBuilder: (_, index) => Text(
              ayat[index],
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
              ),
            itemCount: ayat.length,
            ),
        ),
      ),
      );
  }

   Future <void >loadSuraFile() async{
    // await Future.delayed(Duration(seconds: 2));
    String sura = await rootBundle.loadString('assets/files/${args.index+1}.txt');
    ayat=sura.split('\r\n');
    setState(() {});
  }
}