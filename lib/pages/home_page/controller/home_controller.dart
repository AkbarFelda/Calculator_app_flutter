// HomeController.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxString infoMessage = ''.obs;

  void showInfo(String message) {
    infoMessage.value = message;
    _showInfoPopup();
  }

  void _showInfoPopup() {
    Get.defaultDialog(
      title: 'Info',
      middleText: infoMessage.value,
      actions: [
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}
