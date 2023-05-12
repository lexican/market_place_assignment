import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/gen/assets.gen.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';
import 'package:market_place_assignment/src/core/widgets/app_text/app_text.dart';
import 'package:market_place_assignment/src/core/widgets/product_details/product_description_bullet_list/product_description_bullet_list.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({super.key});

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  bool showAll = true;
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
              content: "Description:",
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: 10.h,
            ),
            if (showAll)
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductDescriptionBulletList(
                    strings: [
                      "Long-sleeve dress shirt in classic fit featuring button-down collar",
                      "Durable Combination Cotton Fabric",
                      "Comfortable and quality dress shirt",
                      "Go To Classic button down shirt for all special occasions"
                    ],
                  ),
                  AppText.b1(
                    content:
                        "Chat us if there is anything you need to ask about the product :)",
                    softWrap: true,
                    fontSize: 12.sp,
                    height: 1.55,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            GestureDetector(
              onTap: () {
                setState(() {
                  showAll = !showAll;
                });
              },
              child: Row(
                children: [
                  AppText.b1(
                    content: showAll ? "See less" : "See more",
                    fontSize: 11.sp,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600,
                    
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  showAll
                      ? Assets.icons.arrowUp.svg(
                          color: AppColors.lightGrey,
                          height: 14,
                          width: 14,
                        )
                      : Assets.icons.arrowDown.svg(
                          color: AppColors.lightGrey,
                          height: 14,
                          width: 14,
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
