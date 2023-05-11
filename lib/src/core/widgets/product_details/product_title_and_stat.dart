import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';
import 'package:market_place_assignment/src/core/widgets/app_bullet/app_bullet.dart';
import 'package:market_place_assignment/src/core/widgets/app_text/app_text.dart';
import 'package:market_place_assignment/src/core/widgets/rating/rating.dart';

class ProductTitleAndStat extends StatelessWidget {
  const ProductTitleAndStat({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.shopping_basket,
                  color: AppColors.lightGrey,
                ),
                SizedBox(
                  width: 8.w,
                ),
                AppText.b1(
                  content: "Thrifting_Store",
                  fontSize: 10.sp,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Column(
              children: [
                Text(
                  "Essential Men's Short-Sleeve Crewneck T-Shirt",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: const Color(0xFF161A33),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Rating(
                      size: 20,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    AppText.b1(
                      content: "4.9 Ratings",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                const AppBullet(),
                Row(
                  children: [
                    AppText.b1(
                      content: "2.3K+ Reviews",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                const AppBullet(),
                Row(
                  children: [
                    AppText.b1(
                      content: "2.9K + Sold",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
