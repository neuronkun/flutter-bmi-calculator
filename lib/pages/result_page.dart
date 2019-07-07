import 'package:bmi_calculator/components/card_container.dart';
import 'package:bmi_calculator/components/result_content.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  static const routeName = '/result';

  ResultPage({@required this.resultText, @required this.bmi});

  final String resultText;
  final String bmi;

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: CardContainer(
                  child: ResultContent(resultText: resultText, bmi: bmi),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BottomButton(
                label: 'RE-CALCULATE',
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
