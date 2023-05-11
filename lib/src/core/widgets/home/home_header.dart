import 'dart:io';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/gen/assets.gen.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';
import 'package:market_place_assignment/src/core/data/data.dart';
import 'package:market_place_assignment/src/core/widgets/badge/badge.dart';
import 'package:market_place_assignment/src/core/widgets/home/slider_item/slider_item.dart';
import 'package:market_place_assignment/src/core/widgets/input_fields/input_text_field.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  int _sliderCurrentIndex = 0;

  void setSliderCurrentIndex(int index) {
    setState(() {
      _sliderCurrentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverAppBar(
      expandedHeight:
          Platform.isAndroid ? size.height / 1.5 : size.height / 1.75,
      elevation: 0,
      pinned: true,
      forceElevated: false,
      backgroundColor: AppColors.backgroundColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
              height: 40.h,
              child: InputTextField(
                hintText: "Search..",
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(
                    left: 14,
                    right: 20,
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Assets.icons.searchIcon.svg(
                      color: AppColors.lightGrey,
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          const AppBadge(
            icon: Icons.shopping_bag_outlined,
            count: "1",
          ),
          const AppBadge(
            icon: Icons.notifications_none_outlined,
            count: "9+",
          ),
        ],
      ),
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
        background: Stack(
          children: [
            Swiper(
              onIndexChanged: setSliderCurrentIndex,
              itemCount: slidersList.length,
              itemBuilder: (context, index) {
                return HomeSliderItem(
                  sliderModel: slidersList[index],
                  sliderCurrentIndex: _sliderCurrentIndex,
                  sliderLength: slidersList.length,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
