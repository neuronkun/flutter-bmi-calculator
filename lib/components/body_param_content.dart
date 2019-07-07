import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BodyParamContent extends StatelessWidget {
  const BodyParamContent({
    Key key,
    this.label,
    this.value,
    this.onPressed,
  }) : super(key: key);

  final String label;
  final double value;
  final CalcFunction onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label.toUpperCase(),
          style: kLabelTextStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              value.toString(),
              style: kNumberTextStyle,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              label == 'weight' ? 'kg' : 'cm',
              style: kLabelTextStyle,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              child: Icon(Icons.remove),
              onPressed: () {
                onPressed(Calc.remove);
              },
            ),
            SizedBox(
              width: 10,
            ),
            RoundIconButton(
              child: Icon(Icons.add),
              onPressed: () {
                onPressed(Calc.add);
              },
            ),
          ],
        ),
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.child, this.onPressed});

  final Widget child;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressMoveUpdate: (d) {
        onPressed();
      },
      child: RawMaterialButton(
        child: child,
        shape: CircleBorder(),
        elevation: 6.0,
        fillColor: kActiveCardColor,
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
