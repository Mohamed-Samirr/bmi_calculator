import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bmi_calculator/bloc/cubit/bmi_state.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit() : super(const BmiState());

  void calculateBmi({
    required double weight,
    required double height,
    required int age,
  }) {
    if (weight <= 0 || height <= 0) {
      emit(const BmiState(
        message: 'Please enter valid values for weight and height',
        isCalculated: false,
      ));
      return;
    }

    // BMI formula: weight (kg) / (height (m) * height (m))
    final heightInMeters = height / 100;
    final bmi = weight / (heightInMeters * heightInMeters);
    
    // Determine BMI category and message
    BMIResultCategory category;
    String message;

    if (bmi < 18.5) {
      category = BMIResultCategory.underweight;
      message = "Underweight";
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      category = BMIResultCategory.normalWeight;
      message = "Normal weight";
    } else if (bmi >= 25 && bmi <= 29.9) {
      category = BMIResultCategory.overweight;
      message = "Overweight";
    } else {
      category = BMIResultCategory.obese;
      message = "Obese";
    }

    // Emit new state with calculated results
    emit(BmiState(
      bmiResult: bmi,
      category: category,
      message: message,
      isCalculated: true,
    ));
  }

  void resetCalculation() {
    emit(const BmiState());
  }
}
