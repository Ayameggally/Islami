import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/hadeth/hadeth.dart';
import 'package:islami/widget/loading_indecator.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const routeName = '/hadeth-details';

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg3.png'),
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
            color: AppTheme.white,
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