import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_place_assignment/src/core/model/category_model.dart';
import 'package:market_place_assignment/src/core/widgets/app_text/app_text.dart';

class HomeCategoryItem extends StatelessWidget {
  final CategoryModel category;
  const HomeCategoryItem({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 35.w,
          height: 35.h,
          padding: const EdgeInsets.all(9),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              8,
            ),
            color: const Color(0xFFf5f5f5),
          ),
          child: category.isSvg
              ? SvgPicture.asset(
                  category.iconPath,
                )
              : Image.asset(
                  category.iconPath,
                ),
        ),
        SizedBox(
          height: 8.h,
        ),
        AppText.b1(
          content: category.title,
          fontSize: 12.sp,
        ),
      ],
    );
  }
}
