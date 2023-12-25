import 'package:get/get.dart';
import '../controller/arithmetic_controller.dart';

class BMIBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ArithmeticController>(() => ArithmeticController());
  }
}