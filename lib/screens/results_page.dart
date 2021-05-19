import 'package:bmi/constants.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResults,@required this.resultText,@required this.interpretation});
  final String bmiResults;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('BMI CALCULATOR') ,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment:CrossAxisAlignment.stretch ,
        children: <Widget>[
          Expanded(
      child:Container(
          padding: EdgeInsets.all(35),
            child:Text(
              'Your Result',
              textAlign:TextAlign.center,
              style: kTitleTextStyle,
            ) ,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kinactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment:CrossAxisAlignment.center ,
                children:<Widget>[
                  Text(
                   resultText.toUpperCase(),
                    style:kResultTextStyle ,
                  ),
                  Text(
                    bmiResults,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign:TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(buttonTitle:'RE-CALCULATE' ,
          onTap:(){
            Navigator.pop(context);
          },
          ),
        ],
      ),
    );
  }
}
