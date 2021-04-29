import 'package:flutter/material.dart';

class RoundIconBtn extends StatelessWidget {
  RoundIconBtn({this.icon, this.onpress});

  final IconData icon;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(height: 48, width: 48),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: () => onpress(),
    );
  }
}
