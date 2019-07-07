import 'package:flutter/material.dart';

const kActiveCardColor = Color(0xFF1D1F33);
const kInactiveCardColor = Color(0xFF0F1427);
const kLabelColor = Color(0xFF5B606E);
const kAccentColor = Color(0xFFE91556);

const int defaultAge = 40;
const double defaultHeight = 170.0;
const double defaultWeight = 60.0;

const kLabelTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: kLabelColor,
);

const kNumberTextStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.w900,
);

enum Sex {
  male,
  female,
}

enum Calc {
  add,
  remove,
}

typedef CalcFunction = void Function(Calc calc);
typedef IntFunction = void Function(int value);
