import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class SexContent extends StatelessWidget {
  const SexContent({
    Key key,
    this.sex,
    this.iconData,
  }) : super(key: key);

  final String sex;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          sex.toUpperCase(),
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
