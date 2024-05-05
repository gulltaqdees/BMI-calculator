import 'package:flutter/material.dart';
import '../utilities/reusable_Card.dart';
import '../utilities/constants.dart';
import '../utilities/bottom_button.dart';

class ResultPage extends StatelessWidget {
//  const ResultPage({Key? key}) : super(key: key);
  final String getbmi;
  final String getResult;
  final String getinterpretation;

  ResultPage({
    Key? key,
    required this.getbmi,
    required this.getResult,
    required this.getinterpretation,
  }) : super(key: key);

//print(getbmi);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 15.0, left: 6.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              onPress: () {
                print('checkkkkk');
                print(getbmi);
                print(getResult);
                print(getinterpretation);
              },
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(getResult.toUpperCase(), style: kResultTextStyle),
                  Text(
                    getbmi,
                    style: kBmiTextStyle,
                  ),
                  Text(
                    getinterpretation,
                    textAlign: TextAlign.center,
                    style: kInterpretationTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RECALCULATE'),
        ],
      ),
    );
  }
}
