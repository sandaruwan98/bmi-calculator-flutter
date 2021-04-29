import 'package:flutter/material.dart';

import '../const.dart';

class BottomBtn extends StatelessWidget {
  const BottomBtn({@required this.text, @required this.ontap});

  final Function ontap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap(),
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomBtnColor,
        width: double.infinity,
        height: kBottomBtnHeight,
        child: Center(
          child: Text(
            text,
            style: klargeBtnTextStyle,
          ),
        ),
      ),
    );
  }
}
