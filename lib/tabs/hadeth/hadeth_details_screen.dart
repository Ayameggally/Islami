import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/hadeth/hadeth.dart';
import 'package:islami/tabs/settings/setting_provider.dart';
import 'package:islami/widget/loading_indecator.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const routeName = '/hadeth-details';

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
        SettingProvider settingProvider = Provider.of<SettingProvider>(context);

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
          title: Text(hadeth.title),
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
          child:hadeth.contant.isEmpty  
         ? LoadingIndicaror()
         : ListView.builder(
            itemBuilder: (_, index) => Text(
              hadeth.contant[index],
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
              ),
            itemCount: hadeth.contant.length,
            ),
        ),
      ),
      );
      
  }
}