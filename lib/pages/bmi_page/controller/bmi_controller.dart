import 'package:get/get.dart';

class BMIController extends GetxController {
  final hasilBMI = RxDouble(0.0);
  var BMICategory = RxString("");
  calculateBMI(double beratBadan , double tinggiBadan){
    double calculateBMI = beratBadan / (tinggiBadan * tinggiBadan);
    hasilBMI.value = calculateBMI;
    print("hasil "+hasilBMI.value.toString());
    if (hasilBMI.value < 18.5) {
      BMICategory.value = "Underweight";
    } else if (hasilBMI.value < 25) {
      BMICategory.value = "Normal weight";
    } else if (hasilBMI.value < 30) {
      BMICategory.value = "Overweight";
    } else if (hasilBMI.value < 35) {
      BMICategory.value = "Obesity grade 1";
    } else if (hasilBMI.value < 40) {
      BMICategory.value = "Obesity grade 2";
    } else {
      BMICategory.value = "Obesity grade 3";
    }
  }
}