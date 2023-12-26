import 'package:calculator_app_flutter/pages/bmi_page/controller/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CalculateBMI extends StatefulWidget {
  const CalculateBMI({Key? key}) : super(key: key);

  @override
  State<CalculateBMI> createState() => _CalculateBMIState();
}

class _CalculateBMIState extends State<CalculateBMI> {
  final BMIController controller = Get.put(BMIController());
  late TextEditingController ctrBeratBadan;
  late TextEditingController ctrTinggiBadan;

  @override
  void initState() {
    super.initState();
    ctrBeratBadan = TextEditingController();
    ctrTinggiBadan = TextEditingController();
  }

  @override
  void dispose() {
    // Panggil dispose pada TextEditingController di sini
    ctrBeratBadan.dispose();
    ctrTinggiBadan.dispose();
    super.dispose();
  }

  Widget textField(
      String label, bool isObsecure, TextEditingController myController) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        controller: myController,
        obscureText: isObsecure,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculate BMI"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              textField("Masukkan Berat Badan", false, ctrBeratBadan),
              textField("Masukkan Tinggi Badan", false, ctrTinggiBadan),
              ElevatedButton(
                onPressed: () => controller.calculateBMI(
                  double.parse(ctrBeratBadan.text),
                  double.parse(ctrTinggiBadan.text),
                ),
                child: Text("calculate"),
              ),
              Obx(
                () => Text(
                  "Hasil BMI: " + controller.hasilBMI.value.toStringAsFixed(2),
                ),
              ),
              Obx(
                () => Text(
                  "Hasil Kategori BMI: " +
                      controller.BMICategory.value.toString(),
                ),
              ),
              // Button clear
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    ctrBeratBadan.clear();
                    ctrTinggiBadan.clear();
                    controller.hasilBMI.value = 0;
                    controller.BMICategory.value = '';
                  },
                  child: Text('Clear'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
