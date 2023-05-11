import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/gen/assets.gen.dart';

import '../../widgets.dart';

class ReviewsWithImagesAndVideos extends StatelessWidget {
  const ReviewsWithImagesAndVideos({super.key});

  @override
  Widget build(BuildContext context) {
    final double aspectRatio = MediaQuery.of(context).size.width * 0.2;
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            AppText.h1(
              content: "Reviews with images & videos",
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List<Widget>.generate(
                    4,
                    (index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          children: [
                            Assets.images.cloth1.image(
                                width: aspectRatio,
                                height: aspectRatio,
                                fit: BoxFit.cover),
                            if (index == 3)
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  color: Colors.black.withOpacity(0.7),
                                  width: aspectRatio,
                                  height: aspectRatio,
                                  child: const Center(
                                    child: AppText.b1(
                                      content: "132+",
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
