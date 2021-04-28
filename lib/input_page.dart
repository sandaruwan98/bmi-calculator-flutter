import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'icon_content.dart';

const bottomBtnHeight = 80.0;
const activeColor = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111328);
const bottomBtnColor = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: selectedgender == Gender.male
                      ? activeColor
                      : inactiveColor,
                  ontap: () => setState(() {
                    selectedgender = Gender.male;
                  }),
                  cardchild: IconContent(FontAwesomeIcons.mars, 'MALE'),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: selectedgender == Gender.female
                      ? activeColor
                      : inactiveColor,
                  ontap: () => setState(() {
                    selectedgender = Gender.female;
                  }),
                  cardchild: IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                ),
              ),
            ],
          )),
          Expanded(child: ReusableCard(colour: activeColor)),
          Expanded(
              child: Row(
            children: [
              Expanded(child: ReusableCard(colour: activeColor)),
              Expanded(child: ReusableCard(colour: activeColor)),
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: bottomBtnColor,
            width: double.infinity,
            height: bottomBtnHeight,
          ),
        ],
      ),
    );
  }
}
