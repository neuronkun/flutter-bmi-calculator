import 'package:bmi_calculator/pages/input_page.dart';
import 'package:flutter/material.dart';

const normalColor = Color(0xFF090C22);

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: normalColor, primaryColor: normalColor),
      initialRoute: '/',
      routes: {
        InputPage.routeName: (context) => InputPage(),
      },
    );
  }
}
