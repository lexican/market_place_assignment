import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';

import '../../widgets.dart';

class TopReviewsPagination extends StatelessWidget {
  const TopReviewsPagination({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SizedBox(
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.lightGrey,
                        ),
                        child: const Icon(
                          Icons.chevron_left,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      AppText.b1(
                        content: "1",
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      const AppText.b1(
                        content: "2",
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      const AppText.b1(
                        content: "3",
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      const AppText.b1(
                        content: "...",
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 40.0,
                              offset: Offset(0, 20),
                              // ignore: use_full_hex_values_for_flutter_colors
                              color: Color(0xff0D02202C),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.chevron_right,
                        ),
                      )
                    ],
                  ),
                  AppText.b1(
                    content: "See more",
                    fontSize: 11.sp,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
