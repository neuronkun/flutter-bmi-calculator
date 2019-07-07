import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class AgeContent extends StatelessWidget {
  AgeContent({this.age, this.onChanged});

  final int age;
  final IntFunction onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'AGE',
          style: kLabelTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          age.toString(),
          style: kNumberTextStyle,
          textAlign: TextAlign.center,
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.white,
            inactiveTrackColor: kInactiveCardColor,
            thumbColor: kAccentColor,
            overlayColor: Color(0x29E91556),
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: 15,
            ),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
          ),
          child: Slider(
            value: age.toDouble(),
            min: 20.0,
            max: 100.0,
            onChanged: (newValue) {
              onChanged(newValue.round());
            },
          ),
        )
      ],
    );
  }
}
