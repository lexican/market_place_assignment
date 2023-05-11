import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/src/core/widgets/product_details/about_product_item/about_product_item.dart';

class AboutProduct extends StatelessWidget {
  const AboutProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                AboutProductItem(
                  title: "Brand",
                  value: "ChAmkpR",
                ),
                AboutProductItem(
                  title: "Color",
                  value: "Aprikot",
                )
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                AboutProductItem(
                  title: "Category",
                  value: "Casual Shirt",
                ),
                AboutProductItem(
                  title: "Material",
                  value: "Polyester",
                )
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                AboutProductItem(
                  title: "Heavy",
                  value: "200 g",
                ),
                AboutProductItem(
                  title: "Heavy",
                  value: "200 g",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
