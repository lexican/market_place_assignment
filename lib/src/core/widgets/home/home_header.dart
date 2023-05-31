import 'dart:io';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/gen/assets.gen.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';
import 'package:market_place_assignment/src/core/data/data.dart';
import 'package:market_place_assignment/src/core/widgets/app_text/app_text.dart';
import 'package:market_place_assignment/src/core/widgets/badge/badge.dart';
import 'package:market_place_assignment/src/core/widgets/home/home_category/home_category.dart';
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
          Platform.isAndroid ? size.height / 1.58 : size.height / 1.9,
      collapsedHeight: 100.h,
      toolbarHeight: 77.h,
      elevation: 0,
      pinned: true,
      forceElevated: false,
      backgroundColor: Colors.white,
      title: SizedBox(
        height: 77.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                height: 33.h,
                child: InputTextField(
                  hintText: "Search..",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(
                      left: 14,
                      right: 10,
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: Assets.icons.searchIcon.svg(
                        color: AppColors.lightGrey,
                        height: 18,
                        width: 18,
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
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Container(
          padding:
              const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
          decoration: BoxDecoration(
            color: AppColors.backgroundColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText.h1(
                content: "Best Sale Product",
                fontSize: 16.sp,
              ),
              AppText.b1(
                content: "See more",
                color: AppColors.primaryColor,
                fontSize: 11.sp,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
        background: Column(
          children: [
            Expanded(
              child: Stack(
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
            Container(
              margin: EdgeInsets.only(
                bottom: const Size.fromHeight(50).height + 18.h,
              ),
              child: HomeCategory(
                sliderCurrentIndex: _sliderCurrentIndex,
                sliderLength: slidersList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
