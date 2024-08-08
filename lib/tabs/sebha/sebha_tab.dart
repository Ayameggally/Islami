import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SebhaTab extends StatefulWidget {

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter=0;
  double angle=0;
  List<String>Tasabih =['سبحان الله', 'الحمدلله' ,'لا اله الا الله','الله أكبر'];
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Image.asset('assets/images/head of seb7a.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 65),
              child: Transform.rotate(
                angle: angle,
                child: GestureDetector(
                 onTap: (){
                OnTap();
                 },
              
                  child: Image.asset('assets/images/body of seb7a.png')),
              ),
            ),

          ],
        ),
       // SizedBox(height: 5),
        Text(AppLocalizations.of(context)!.numberofTasbeehs,
        style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,),
           SizedBox(height: 20),

          Center(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(40)
              ),
              child:Text('$counter',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
              ), 
            ),
          ),
          SizedBox(height: 30),

          Center(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(40)
              ),
              child:Text(' ${Tasabih[index]}',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
              ), 
            ),
          )
      ],
      );
    
  }
  OnTap(){
    counter++;
    if (counter%33==0){
      index++;
      counter++;
      counter=0;
    }
    if(index==Tasabih.length){
      index=0;
    }
    angle += 360/4;
    setState(() {
      
    });
  }
}