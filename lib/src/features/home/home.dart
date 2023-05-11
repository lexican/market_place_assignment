import 'package:flutter/material.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';
import 'package:market_place_assignment/src/core/widgets/home/home_header.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: const SafeArea(
        child: CustomScrollView(
          slivers: [
            HomeHeader(),
          ],
        ),
      ),
    );
  }
}
