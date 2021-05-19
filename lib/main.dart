import 'package:flutter/material.dart';
import 'package:bmi/screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF151A3C),
        scaffoldBackgroundColor: Color(0xFF151A3C),
      ),
      home: InputPage(),
    );
  }
}
