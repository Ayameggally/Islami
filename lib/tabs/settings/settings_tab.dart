import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/settings/setting_provider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider =Provider.of<SettingProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20),
      child: Column(
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Dark Mode',
            style: Theme.of(context).textTheme.headlineSmall),
            Switch(
              value: settingProvider.isDark,
             onChanged: (isDark ) => settingProvider.changeThemeMode(
              isDark ? ThemeMode.dark : ThemeMode.light),
             activeTrackColor: AppTheme.gold ,
             inactiveTrackColor: Colors.grey,
             )
          ],),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Language',
              style: Theme.of(context).textTheme.headlineSmall,
              ),
               DropdownButtonHideUnderline(
                 child: DropdownButton<String>(
                  value: settingProvider.languge,
                  items: [
                    DropdownMenuItem(value: 'en',
                      child: Text('English'),
                      ),
                    DropdownMenuItem(value: 'ar',
                      child: Text('العربية'),
                      ),
                    ],
                  onChanged: (selectedLanguge){
                    if(selectedLanguge==null)return;
                    settingProvider.changeLanguge(selectedLanguge);
                  },
                  dropdownColor: AppTheme.white,
                  borderRadius: BorderRadius.circular(16),
                  ),
               ),
            ],
          ),
      ],
      ),
    );
  }
}
