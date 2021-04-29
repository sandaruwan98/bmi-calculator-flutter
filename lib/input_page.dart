import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'const.dart';
import 'icon_content.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender;
  int height = 140;
  int weight = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: selectedgender == Gender.male
                      ? kActiveColor
                      : kInactiveColor,
                  ontap: () => setState(() {
                    selectedgender = Gender.male;
                  }),
                  cardchild: IconContent(FontAwesomeIcons.mars, 'MALE'),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: selectedgender == Gender.female
                      ? kActiveColor
                      : kInactiveColor,
                  ontap: () => setState(() {
                    selectedgender = Gender.female;
                  }),
                  cardchild: IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                ),
              ),
            ],
          )),
          Expanded(
              child: ReusableCard(
            colour: kActiveColor,
            cardchild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text(height.toString(), style: kbigTextStyle),
                    Text('cm', style: kLabelTextStyle),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: Color(0xFF8D8E98),
                    activeTrackColor: Colors.white,
                    thumbColor: kBottomBtnColor,
                    overlayColor: Color(0x29EB1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: RoundSliderThumbShape(enabledThumbRadius: 20),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newval) {
                      setState(() {
                        height = newval.round();
                      });
                    },
                  ),
                )
              ],
            ),
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: kActiveColor,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kbigTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            backgroundColor: Color(0xFF4C4F5E),
                            onPressed: () {},
                          ),
                          FloatingActionButton(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            backgroundColor: Color(0xFF4C4F5E),
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(colour: kActiveColor),
              ),
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: kBottomBtnColor,
            width: double.infinity,
            height: kBottomBtnHeight,
          ),
        ],
      ),
    );
  }
}
