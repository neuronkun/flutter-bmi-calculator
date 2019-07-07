import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/age_content.dart';
import 'package:bmi_calculator/components/body_param_content.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/card_container.dart';
import 'package:bmi_calculator/components/sex_content.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/constants.dart';

class InputPage extends StatefulWidget {
  static const routeName = '/';

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;

  Sex selectedSex;

  int age = defaultAge;
  double height = defaultHeight;
  double weight = defaultWeight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: CardContainer(
                        color: selectedSex == Sex.male
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        child: SexContent(
                          sex: 'male',
                          iconData: FontAwesomeIcons.mars,
                        ),
                        onTapped: () {
                          setState(() {
                            selectedSex = Sex.male;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CardContainer(
                        color: selectedSex == Sex.female
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        child: SexContent(
                          sex: 'female',
                          iconData: FontAwesomeIcons.venus,
                        ),
                        onTapped: () {
                          setState(() {
                            selectedSex = Sex.female;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: CardContainer(
                  child: AgeContent(
                    age: age,
                    onChanged: (int newValue) {
                      setState(() {
                        age = newValue;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: CardContainer(
                        child: BodyParamContent(
                          label: 'height',
                          value: height,
                          onPressed: (Calc value) {
                            setState(() {
                              height = value == Calc.add
                                  ? height + 0.5
                                  : height - 0.5;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CardContainer(
                        child: BodyParamContent(
                          label: 'weight',
                          value: weight,
                          onPressed: (Calc value) {
                            setState(() {
                              weight = value == Calc.add
                                  ? weight + 0.5
                                  : weight - 0.5;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BottomButton(
                label: 'CALCULATE',
                onPressed: () {
                  CalculatorBrain calc =
                      CalculatorBrain(height: height, weight: weight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                            bmi: calc.bmi(),
                            resultText: calc.resultText(),
                          ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
