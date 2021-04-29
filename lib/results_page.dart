import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

import 'const.dart';

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
              child: Text(
            'Your Result',
            style: ktitleTextStyle,
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
          // Expanded(child: null),
        ],
      ),
    );
  }
}
