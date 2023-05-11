import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/src/core/data/data.dart';
import 'package:market_place_assignment/src/core/widgets/home/dot_indicator/dot_indicator.dart';
import 'package:market_place_assignment/src/core/widgets/home/home_category_item/home_category_item.dart';

class HomeCategory extends StatelessWidget {
  final int sliderLength;
  final int sliderCurrentIndex;
  const HomeCategory({
    super.key,
    required this.sliderLength,
    required this.sliderCurrentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 12,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: catogories
                .map(
                  (category) => HomeCategoryItem(
                    category: category,
                  ),
                )
                .toList(),
          ),
          SizedBox(
            height: 16.h,
          ),
          HomeDotIndicator(
            dotsCount: sliderLength,
            position: sliderCurrentIndex,
          ),
          SizedBox(
            height: 6.h,
          ),
        ],
      ),
    );
  }
}
