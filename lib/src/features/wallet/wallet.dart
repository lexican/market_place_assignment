import 'package:flutter/material.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: const Text("Wallet"),
      ),
    );
  }
}
