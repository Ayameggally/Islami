import 'package:flutter/material.dart';
import 'package:islami/tabs/hadeth/hadeth_tab.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/radio/radio_tab.dart';
import 'package:islami/tabs/sebha/sebha_tab.dart';
import 'package:islami/tabs/settings/settings_tab.dart';


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
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg3.png'),
          fit: BoxFit.fill,
      ),
    ),
    child:Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
          title: Text('إسلامي'),
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
              label: 'Quran',
            
        ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/quran-quran-svgrepo-com.png'),
              ),
              label: 'Hadeth',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/sebha_blue.png'),
              ),
              label: 'Sebha',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/radio_blue.png'),
              ),
              label: 'Radio',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined
              ),
              label: 'Settings',
            ),
        ],
       ),
    ) ,
    );
  }
}
