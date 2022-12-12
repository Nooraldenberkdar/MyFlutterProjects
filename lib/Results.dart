import 'package:bmi_calculator/Constants.dart';
import 'package:flutter/material.dart';
import 'Components.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({required this.status, required this.result, required this.description});
  final status;
  final result;
  final description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result.toUpperCase(),
                    style: kStatusTextStyle,
                  ),
                  Text(
                    status,
                    style: kBmiTextStyle,
                  ),
                  Text(
                    description,
                    style: kDescription,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          // Container(
          //   color: Color(0xFFEB1555),
          //   width: double.infinity,
          //   height: 80,
          //   margin: EdgeInsets.only(top: 10),
          //   padding: EdgeInsets.only(bottom: 20),
          //   child: Center(
          //     child: Text(
          //       'Re-Calculate',
          //       style: kBottomContainerStyle,
          //     ),
          //   ),
          // )
          ButtomBotton(
            buttonTitle: 'Re-Calculate',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
