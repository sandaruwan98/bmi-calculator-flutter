import 'package:bmi_calculator/compnents/bottom_btn.dart';
import 'package:bmi_calculator/compnents/reusable_card.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCUTATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: ktitleTextStyle,
            ),
          )),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveColor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Normal',
                      style: kresultTextStyle,
                    ),
                    Text(
                      '23.42',
                      style: kbmiTextStyle,
                    ),
                    Text(
                      'Your bmi is quite low,eat somthing',
                      textAlign: TextAlign.center,
                      style: kbodyTextStyle,
                    ),
                  ],
                ),
              )),
          BottomBtn(
            text: 'RE-CALCULATE',
            ontap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
