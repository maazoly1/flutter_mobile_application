import 'package:flutter/material.dart';
import 'package:flutter_mobile_application/calculator/calculator_view.dart';
import 'package:flutter_mobile_application/icecream/icecream_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        // child: CalculatorView(),
        child: IcecreamView(),
      )
    );
  }
}
