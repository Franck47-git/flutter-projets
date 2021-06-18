import 'package:flutter/material.dart';
import 'constant.dart';
import 'reusablecard.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI calculator"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                  child: Text(
                'YOUR RESULT',
                style: textTextStyletile,
              )),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                coleur: activeCodeColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Normal', style: textTextnormal,),
                    Text('18.30', style: resultStyle,),
                    Text('Your BMI result is quite low, you shoul eat more !', textAlign: TextAlign.center, style: conseilText,)
                  ],
                ),
                )
              )
          ],
        ));
  }
}
