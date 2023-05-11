import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_text/app_text.dart';
import '../about_product_item/about_product_item.dart';

class ShipingInfo extends StatelessWidget {
  const ShipingInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppText.h1(
              content: "Shipping Information:",
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: 20.h,
            ),
            const AboutProductItem(
              title: "Delivery:",
              value: "Shipping from Jakarta, Indonesia",
            ),
            SizedBox(
              height: 12.h,
            ),
            const AboutProductItem(
              title: "Shipping:",
              value: "FREE International Shipping",
            ),
            SizedBox(
              height: 12.h,
            ),
            const AboutProductItem(
              title: "Arrive:",
              value: "Estimated arrival on 25 - 27 Oct 2022",
            )
          ],
        ),
      ),
    );
  }
}
