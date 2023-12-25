import 'package:calculator_app_flutter/pages/bmi_page/controller/bmi_controller.dart';
import 'package:get/get.dart';

class BMIBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BMIController>(() => BMIController());
  }
}