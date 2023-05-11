import 'package:flutter/material.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 30,
        ),
        child: Divider(
          height: 1,
          color: AppColors.lightGrey,
        ),
      ),
    );
  }
}
