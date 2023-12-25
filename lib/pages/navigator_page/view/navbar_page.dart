// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables
import 'package:calculator_app_flutter/pages/arithmetic_page/view/arithmetic_page.dart';
import 'package:calculator_app_flutter/utils/color_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../bmi_page/view/bmi_page.dart';
import '../../home_page/view/home_page.dart';
import '../controller/navbar_controller.dart';


class BottomNavBar extends StatelessWidget {
  final BottomNavigationController controller =
      Get.put(BottomNavigationController());

  final List<Widget> pages = [
    HomePage(),
    CalculatorApp(),
    const CalculateBMI()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[controller.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: controller.changePage,
          selectedItemColor: ColorResources.primaryColor,
          backgroundColor: ColorResources.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined), label: 'Calculate'),
            BottomNavigationBarItem(icon: Icon(Icons.scale_rounded), label: 'BMI')
          ],
        ),
      ),
    );
  }
}
