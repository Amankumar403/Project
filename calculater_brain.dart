import 'dart:math';


class CalculaterBrain {
  CalculaterBrain(this.height ,this.weight);

  final int height;
  final  int weight ;

  var _bmi;

    CalculaterBmi (){
    double _bmi = weight / pow(height/100, 2!);
    return  _bmi.toStringAsFixed(1);
  }

   String getResult (){
    if (_bmi <= (24)){
      return 'overweight';
    }else if (_bmi > 18.5){
      return 'normal';
    }else {
      return 'underweight';
    }
  }

  String getnIterpretation(){
    if (_bmi >= 25){
      return 'you have tha height then normal body weight. try to exercise more.';
    }else if (_bmi >= 18.5){
      return 'You have a normal Body weight. Good job.';
    }else {
      return 'You have tha lower then normal Body weight. You can eat a bit more.';
    }
  }
}
