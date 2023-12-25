import 'package:calculator_app_flutter/pages/navigator_page/view/navbar_page.dart';
import 'package:calculator_app_flutter/utils/color_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/custom_themes.dart';
import '../controller/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator App',
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: ColorResources.primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select an Option',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            _buildButton('Arithmetic', ColorResources.blueDark, () {
              homeController.showInfo('Operasi aritmatika merupakan cabang ilmu matematika, di mana dasar dari operasi aritmatika adalah penjumlahan pengurangan, perkalian, dan pembagian.');
            }),
            SizedBox(height: 20),
            _buildButton('BMI', ColorResources.green, () {
              homeController.showInfo('Body Mass Index atau BMI adalah suatu ukuran yang digunakan untuk menunjukkan kategori berat badan seseorang.');
            }),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavBar(),
    );
  }

  Widget _buildButton(String label, Color color, Function() onPressed) {

    return GestureDetector(
      onTap: onPressed,
      onLongPress: () {
        homeController.showInfo(Text as String);
      },
      child: Container(
        width: 200,
        height: 60,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            label,
            style: homePageStyle(
              color: ColorResources.white,
              weight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
