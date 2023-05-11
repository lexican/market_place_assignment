import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets.dart';

class ReviewsAndRating extends StatelessWidget {
  const ReviewsAndRating({super.key});

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
              content: "Reviews & Ratings",
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            AppText.h1(
                              content: "4.9",
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            AppText.b1(
                              content: "/ 5.0",
                              fontSize: 10.sp,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        RatingBarIndicator(
                          rating: 4.5,
                          itemBuilder: (context, index) => const Rating(
                            size: 16,
                          ),
                          itemCount: 5,
                          itemSize: 16,
                          direction: Axis.horizontal,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    AppText.b1(
                      content: "2.3k+ Reviews",
                      fontSize: 12.sp,
                    )
                  ],
                ),
                SizedBox(
                  width: 30.w,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const RatingsStat(
                        stat: "1.5K",
                        value: 0.8,
                        index: 5,
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      const RatingsStat(
                        stat: "710",
                        value: 0.4,
                        index: 4,
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      const RatingsStat(
                        stat: "140",
                        value: 0.09,
                        index: 3,
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      const RatingsStat(
                        stat: "10",
                        value: 0.04,
                        index: 2,
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      const RatingsStat(
                        stat: "4",
                        value: 0.01,
                        index: 1,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
