import 'package:bmi_calculator/screen.dart';
import 'package:flutter/material.dart';
void main () {
  runApp( bmiCalculator());
}
class bmiCalculator extends StatefulWidget {
  const bmiCalculator({super.key});

  @override
  State<bmiCalculator> createState() => _bmiCalculatorState();
}

class _bmiCalculatorState extends State<bmiCalculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bmiScreen(),
    );
  }
}