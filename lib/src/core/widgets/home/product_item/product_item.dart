import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';
import 'package:market_place_assignment/src/core/model/product_model.dart';
import 'package:market_place_assignment/src/core/widgets/app_text/app_text.dart';
import 'package:market_place_assignment/src/core/widgets/rating/rating.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;
  const ProductItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image.asset(
                    product.imagePath,
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: product.isFavourite
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_outline,
                          ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 12,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.b1(
                    content: "Shirt",
                    fontSize: 13.sp,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    "Essential Men's Short-Sleeve Crewneck TShirt",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(
                        0xFF161A33,
                      ),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Rating(),
                          SizedBox(
                            width: 4.w,
                          ),
                          AppText.b1(
                            content: "4.9 | 2356",
                            fontSize: 10.sp,
                          )
                        ],
                      ),
                      AppText.h1(
                        content: "\$12.00",
                        color: AppColors.primaryColor,
                        fontSize: 16.sp,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
