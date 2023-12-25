import 'package:calculator_app_flutter/utils/color_resources.dart';
import 'package:calculator_app_flutter/utils/custom_themes.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  //variables
  double firstNum = 0.0;
  double secondNum = 0.0;
  var input = "";
  var output = "";
  var operation = "";
  var hideInput = false;
  var outputSize = 34.0;

  onButtonClick(value) {
    //if value is AC
    if (value == "AC") {
      input = "";
      output = "";
    } else if (value == "<") {
      if (input.isNotEmpty) {
        input = input.substring(0, input.length - 1);
      }
    } else if (value == "=") {
      if (input.isNotEmpty) {
        var userInput = input;
        userInput = input.replaceAll("x", "*");
        Parser p = Parser();
        Expression expression = p.parse(userInput);
        ContextModel cm = ContextModel();
        var finalValue = expression.evaluate(EvaluationType.REAL, cm);
        output = finalValue.toString();
        if (output.endsWith(".0")) {
          output = output.substring(0, output.length - 2);
        }
        input = output;
        hideInput = true;
        outputSize = 52;
      }
    } else {
      input = input + value;
      hideInput = false;
      outputSize = 34;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.bgColor,
      body: Column(
        children: [
          //input output area
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              color: ColorResources.black,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      hideInput ? '' : input,
                      style:
                          TextStyle(fontSize: 48, color: ColorResources.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      output,
                      style: TextStyle(
                          fontSize: outputSize,
                          color: ColorResources.white.withOpacity(0.7)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ]),
            ),
          ),
          // button area
          Row(
            children: [
              button(
                  text: "AC",
                  buttonBgColor: ColorResources.bgDarkColor,
                  tcolor: ColorResources.red),
              button(
                  text: "<",
                  buttonBgColor: ColorResources.bgDarkColor,
                  tcolor: ColorResources.red),
              button(text: "", buttonBgColor: Colors.transparent),
              button(
                  text: "/",
                  buttonBgColor: ColorResources.bgDarkColor,
                  tcolor: ColorResources.red),
            ],
          ),
          Row(
            children: [
              button(
                  text: "7",
                  buttonBgColor: ColorResources.bgDarkColor,
                  tcolor: ColorResources.white),
              button(
                  text: "8",
                  buttonBgColor: ColorResources.bgDarkColor,
                  tcolor: ColorResources.white),
              button(
                  text: "9",
                  buttonBgColor: ColorResources.bgDarkColor,
                  tcolor: ColorResources.white),
              button(
                  text: "x",
                  buttonBgColor: ColorResources.bgDarkColor,
                  tcolor: ColorResources.red),
            ],
          ),
          Row(
            children: [
              button(
                  text: "4",
                  buttonBgColor: ColorResources.bgDarkColor,
                  tcolor: ColorResources.white),
              button(
                  text: "5",
                  buttonBgColor: ColorResources.bgDarkColor,
                  tcolor: ColorResources.white),
              button(
                  text: "6",
                  buttonBgColor: ColorResources.bgDarkColor,
                  tcolor: ColorResources.white),
              button(
                  text: "-",
                  buttonBgColor: ColorResources.bgDarkColor,
                  tcolor: ColorResources.red),
            ],
          ),
          Row(
            children: [
              button(
                  text: "1",
                  buttonBgColor: ColorResources.bgDarkColor,
                  tcolor: ColorResources.white),
              button(
                  text: "2",
                  buttonBgColor: ColorResources.bgDarkColor,
                  tcolor: ColorResources.white),
              button(
                  text: "3",
                  buttonBgColor: ColorResources.bgDarkColor,
                  tcolor: ColorResources.white),
              button(
                  text: "+",
                  buttonBgColor: ColorResources.bgDarkColor,
                  tcolor: ColorResources.red),
            ],
          ),
          Row(
            children: [
              button(
                  text: "%",
                  buttonBgColor: ColorResources.bgDarkColor,
                  tcolor: ColorResources.red),
              button(
                  text: "0",
                  buttonBgColor: ColorResources.bgDarkColor,
                  tcolor: ColorResources.white),
              button(
                  text: ".",
                  buttonBgColor: ColorResources.bgDarkColor,
                  tcolor: ColorResources.white),
              button(
                  text: "=",
                  buttonBgColor: ColorResources.green,
                  tcolor: ColorResources.white),
            ],
          ),
        ],
      ),
    );
  }

  Widget button(
      {text, tcolor = ColorResources.white, buttonBgColor = ColorResources}) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(22),
            primary: buttonBgColor,
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(12), // Adjust the radius as needed
            ),
          ),
          onPressed: () => onButtonClick(text),
          child: Text(text,
              style: TextStyle(
                fontSize: 18,
                color: tcolor,
                fontWeight: FontWeight.w700,
              )),
        ),
      ),
    );
  }
}
