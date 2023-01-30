import 'dart:math';

class BmiBrain {
  BmiBrain({required this.height, required this.weight});
  final int height;
  final int weight;

  double _bmi = 1;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  getResultText() {
    if (_bmi >= 25.5) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25.5) {
      return 'Control on yourself, you are getting fatty day by day which is not good';
    } else if (_bmi > 18.5) {
      return 'You are so normal, but have a control on yourself if wont be late if you start fast food';
    } else {
      return 'brother seriously, we are literally same we eat but it all goes in vain we have to keep hard work';
    }
  }
}
