// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mobile_application/component/calculator_button.dart';
import 'package:flutter_mobile_application/component/calculator_display.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  int x = 0;
  int y = 0;
  num z = 0;

  final displayOneController = TextEditingController();
  final displayTwoController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    displayOneController.text = x.toString();
    displayTwoController.text = y.toString();
  }

  @override
  void dispose () {
    displayOneController.dispose();
    displayTwoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    void handleAdd() {
      setState(() => z = num.tryParse(displayOneController.text)! +
            num.tryParse(displayTwoController.text)!
      );
    }

    void handleMinus() {
      setState(() => z = num.tryParse(displayOneController.text)! -
            num.tryParse(displayTwoController.text)!
      );
    }

    void handleMultiply() {
      setState(() => z = num.tryParse(displayOneController.text)! *
            num.tryParse(displayTwoController.text)!
      );
    }

    void handleDivide() {
      setState(() => z = num.tryParse(displayOneController.text)! /
            num.tryParse(displayTwoController.text)!
      );
    }

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Display(key: Key("display1"), controller: displayOneController),
          SizedBox(height: 20),
          Display(key: Key("display2"), controller: displayTwoController),
          SizedBox(height: 20),
          Text(key: Key("result"), z.toString(), style: TextStyle(fontSize: 48)),
          Spacer(),
          CalculatorButton(
              handleAdd: handleAdd,
              handleMinus: handleMinus,
              handleMultiply: handleMultiply,
              handleDivide: handleDivide),
        ],
      ),
    );
  }
}
