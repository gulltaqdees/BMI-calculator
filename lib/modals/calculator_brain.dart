import 'dart:math';
class CalculatorBrain{
  CalculatorBrain({required this.height,required this.width});
  final double width;
  final double height;
  double _bmi=0.0;

  String getBmiResult(){
    _bmi = width/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getTextResult(){
    if(_bmi > 1 && _bmi<25 ){
      return 'Normal';
    }
    else if(_bmi>=25){
      return 'Overweight';
    }
    else{
      return 'Underweight';
    }
  }
  String getInterpretationResult(){
    if(_bmi > 1 && _bmi<25 ){
      return 'You have a normal body weight. Good Job!';
    }
    else if(_bmi>=25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }
    else{
      return 'You have a lower than normal body weight. you can eat a bit more';
    }
  }

}