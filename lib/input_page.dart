import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomBtnHeight = 80.0;
const activeColor = Color(0xFF1D1E33);
const bottomBtnColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                colour: activeColor,
                cardchild: IconContent(FontAwesomeIcons.mars, 'MALE'),
              )),
              Expanded(
                  child: ReusableCard(
                colour: activeColor,
                cardchild: IconContent(FontAwesomeIcons.venus, 'FEMALE'),
              )),
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

class IconContent extends StatelessWidget {
  IconContent(this.icon, this.text);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xFF8D8E98),
            fontSize: 18.0,
          ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardchild});
  final Color colour;
  final Widget cardchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
      child: cardchild,
    );
  }
}
