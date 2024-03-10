import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({
    super.key,
    this.hint = "Enter a number",
    this.type = "number",
    required this.controller,
  });

  final String? hint;
  final String? type;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    TextInputType keyboardType;

    switch (type) {
      case "text":
        keyboardType = TextInputType.text;
        break;
      case "number":
        keyboardType = TextInputType.number;
        break;
      case "email":
        keyboardType = TextInputType.emailAddress;
        break;
      // Add more cases as needed
      default:
        keyboardType = TextInputType.number;
    }

    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10)),
        border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10)),
        hintText: hint,
      ),
    );
  }
}
