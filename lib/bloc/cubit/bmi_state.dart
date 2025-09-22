import 'package:equatable/equatable.dart';

enum BMIResultCategory {
  underweight,
  normalWeight,
  overweight,
  obese,
}

class BmiState extends Equatable {
  final double? bmiResult;
  final BMIResultCategory? category;
  final String? message;
  final bool isCalculated;

  const BmiState({
    this.bmiResult,
    this.category,
    this.message,
    this.isCalculated = false,
  });

  @override
  List<Object?> get props => [bmiResult, category, message, isCalculated];

  BmiState copyWith({
    double? bmiResult,
    BMIResultCategory? category,
    String? message,
    bool? isCalculated,
  }) {
    return BmiState(
      bmiResult: bmiResult ?? this.bmiResult,
      category: category ?? this.category,
      message: message ?? this.message,
      isCalculated: isCalculated ?? this.isCalculated,
    );
  }
}
