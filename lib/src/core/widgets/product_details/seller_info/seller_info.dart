import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';

import '../../widgets.dart';

class SellerInfo extends StatelessWidget {
  const SellerInfo({super.key});

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
              content: "Seller Information:",
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 60.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.lightGrey,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: AppText.h1(
                            content: "Thrifting Store.",
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 8,
                      right: 0,
                      child: Container(
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                          color: AppColors.lightGrey,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.h1(
                        content: "Thrifting_Store",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        height: 4.w,
                      ),
                      AppText.b1(
                        content: "Active 5 Min ago | 96,7% Positive Feedback",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        height: 12.w,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.shopping_bag,
                              color: AppColors.primaryColor,
                              size: 14,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            AppText.b1(
                              content: "Visit store",
                              fontSize: 11.sp,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
