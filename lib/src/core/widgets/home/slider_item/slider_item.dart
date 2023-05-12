import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/src/core/model/slider_model.dart';
import 'package:market_place_assignment/src/core/widgets/app_text/app_text.dart';
import 'package:market_place_assignment/src/core/widgets/home/dot_indicator/dot_indicator.dart';

class HomeSliderItem extends StatelessWidget {
  final SliderModel sliderModel;
  final int sliderLength;
  final int sliderCurrentIndex;
  const HomeSliderItem({
    super.key,
    required this.sliderModel,
    required this.sliderLength,
    required this.sliderCurrentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          sliderModel.imageAssetPath,
          fit: BoxFit.cover,
          width: double.maxFinite,
        ),
        Positioned(
          top: Platform.isAndroid ? kToolbarHeight * 1.5 : kToolbarHeight * 2,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppText.h1(
                        content: "#${sliderModel.title}",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      HomeDotIndicator(
                        dotsCount: sliderLength,
                        position: sliderCurrentIndex,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppText.h1(
                        content: sliderModel.subTitle,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                if (sliderModel.description != null)
                  Container(
                    padding: const EdgeInsets.only(top: 4),
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText.b1(
                          content: sliderModel.description ?? "",
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                SizedBox(
                  height: 16.h,
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFF212121),
                    ),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 2,
                    ),
                    child: AppText.b1(
                      content: "Check this out",
                      fontSize: 10.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
