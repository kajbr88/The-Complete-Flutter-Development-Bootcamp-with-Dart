import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;//const variables must be initialized with a compile-time constant, while final variables can be initialized with a runtime constant.
  final int weight;//final ensures that a property is initialized only once per instance created. It does not make the property the same across all instances. Each object gets its own immutable copy of the final property.
  late double _bmi;

  String calculatorBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

   String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal weight. Good job!';
    } else {
      return 'You have a lower normal body weight. You can eat a bit more.';
    }
  }
}
