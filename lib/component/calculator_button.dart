import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  
  final VoidCallback handleAdd;
  final VoidCallback handleMinus;
  final VoidCallback handleMultiply;
  final VoidCallback handleDivide;
  
  const CalculatorButton({ super.key, required this.handleAdd, required this.handleMinus, required this.handleMultiply, required this.handleDivide });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
          onPressed: handleAdd,
          child: Icon(CupertinoIcons.add),
        ),
        FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
          onPressed: handleMinus,
          child: Icon(CupertinoIcons.minus),
        ),
        FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
          onPressed: handleMultiply,
          child: Icon(CupertinoIcons.multiply),
        ),
        FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
          onPressed: handleDivide,
          child: Icon(CupertinoIcons.divide),
        ),
      ],
    );
  }
}
