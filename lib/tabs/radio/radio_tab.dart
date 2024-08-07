import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
    
       Padding(
          padding: const EdgeInsets.only(top:140),
          child: Image.asset('assets/images/radio_logo.png'),
        ),
       SizedBox(height: 30,),
      Text('إذاعة القرآن الكريم',
       style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,),

      SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                color: Theme.of(context).primaryColor,
                icon: 
                ImageIcon (AssetImage('assets/images/Icon metro-next.png',)),
                onPressed: () {},
              ),
              IconButton(
               color: Theme.of(context).primaryColor,
                icon: ImageIcon (AssetImage('assets/images/Icon awesome-play.png')),
                onPressed: () {},
              ),
              IconButton(
               color: Theme.of(context).primaryColor,
                icon: ImageIcon (AssetImage('assets/images/Icon metro-next to left.png')),
                onPressed: () {},
              ),
            ],
          ),
      
      ],
    );
  }
}
   
 
