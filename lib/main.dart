import 'package:flutter/material.dart';
import 'Input_Page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0XFF0A0E21),
        primaryColor: Color(0XFF0A0E21),
        appBarTheme: AppBarTheme(
          color: Color(0XFF0A0E21),
        ),
      ),
      home: InputPage(),
    );
  }
}
