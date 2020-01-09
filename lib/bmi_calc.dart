import 'dart:math';


class CalculateBMI  {
  CalculateBMI({this.height, this.weight});
  var weight, height;

  double bmi;
  
calcBmi(){
   bmi = weight / pow(height / 100, 2);
   return bmi;
}
 
 getBMI() {
    // bmi = weight / pow(height / 100, 2);
    if (bmi<18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 || bmi <= 24.9) {
      return 'Healthy Weight';
    } else if (bmi >= 25.0 || bmi <= 29.9) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

   getRange() {
     // bmi = weight / pow(height / 100, 2);
    if (bmi<18.5) {
      return '(BMI less than 18.5)';
    } else if (bmi >= 18.5 || bmi <= 24.9) {
      return '(BMI 18.5 to 24.9)';
    } else if (bmi >= 25.0 || bmi <= 29.9) {
      return '(BMI 25 to 30)';
    } else {
      return '(BMI 30+)';
    }
  }
}