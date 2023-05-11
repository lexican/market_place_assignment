import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/gen/assets.gen.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';
import 'package:market_place_assignment/src/core/model/review_model.dart';
import 'package:market_place_assignment/src/core/widgets/app_buttons/outline_button.dart';

import '../../widgets.dart';

class ReviewItem extends StatelessWidget {
  final ReviewModel review;
  const ReviewItem({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage(
                    review.imagePath,
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                AppText.h1(
                  content: review.username,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Rating(
                  size: 24,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 6,
                    right: 10,
                  ),
                  child: AppText.h1(
                    content: "5.0",
                    fontSize: 14.sp,
                  ),
                ),
                Icon(
                  Icons.more_horiz,
                  color: AppColors.lightGrey,
                  size: 20,
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 12.w,
        ),
        SizedBox(
          height: 30,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              AppOutlineButton(
                text: "Product in good condition",
                borderRadius: BorderRadius.circular(20),
                backgroundColor: AppColors.primaryColor.withOpacity(
                  0.07,
                ),
              ),
              AppOutlineButton(
                text: "Very fast delivery",
                borderRadius: BorderRadius.circular(20),
                backgroundColor: AppColors.primaryColor.withOpacity(
                  0.07,
                ),
              ),
              AppOutlineButton(
                text: "Fast caller response",
                borderRadius: BorderRadius.circular(20),
                backgroundColor: AppColors.primaryColor.withOpacity(
                  0.07,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.w,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 70,
              ),
              child: AppText.h1(
                content: review.content,
                fontSize: 13.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24.w,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Assets.icons.thumbsUp.svg(
                  color: AppColors.primaryColor,
                  width: 16,
                  height: 16,
                ),
                const SizedBox(
                  width: 12,
                ),
                AppText.h1(
                  content: "Helpful ?",
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primaryColor,
                ),
              ],
            ),
            AppText.b1(
              content: "Yesterday",
              fontSize: 13.sp,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 24,
            bottom: 30,
          ),
          child: Divider(
            height: 1,
            color: AppColors.lightGrey,
          ),
        ),
      ],
    );
  }
}
