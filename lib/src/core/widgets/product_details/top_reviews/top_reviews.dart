import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/gen/assets.gen.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';
import 'package:market_place_assignment/src/core/data/data.dart';

import '../../widgets.dart';

class TopReviews extends StatelessWidget {
  const TopReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText.h1(
              content: "Top reviews",
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppText.b1(
                  content: "Showing 3 of 2.3k+ reviews",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.lightGrey,
                      ),
                      borderRadius: BorderRadius.circular(4)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText.h1(
                          content: "Popular",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Assets.icons.arrowDown.svg(
                          color: AppColors.lightGrey,
                          height: 14,
                          width: 14,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            ...reviews.map(
              (review) => ReviewItem(
                review: review,
              ),
            )
          ],
        ),
      ),
    );
  }
}
