import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({
    Key key,
    this.color = kInactiveCardColor,
    this.child,
    this.onTapped,
  }) : super(key: key);

  final Color color;
  final Widget child;
  final Function onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}
