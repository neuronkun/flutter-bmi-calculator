import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ResultContent extends StatelessWidget {
  const ResultContent({
    this.resultText,
    this.bmi,
  });

  final String resultText;
  final String bmi;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          resultText,
          style: TextStyle(
            color: Color(0xFF3ACC82),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          bmi,
          style: TextStyle(
            fontSize: 90,
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Normal BMI range:',
          style: kLabelTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '18.5 - 25.0',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
