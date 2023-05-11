import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';

class HomeDotIndicator extends StatelessWidget {
  final int dotsCount;
  final int position;
  const HomeDotIndicator({
    super.key,
    required this.dotsCount,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: dotsCount,
      position: position,
      decorator: DotsDecorator(
        size: const Size.square(3.0),
        activeSize: const Size(10.0, 4.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.0),
        ),
        activeColor: AppColors.grey,
        spacing: const EdgeInsets.all(2),
      ),
    );
  }
}
