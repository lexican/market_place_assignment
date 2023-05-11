import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';

import '../widgets.dart';

class AppOutlineButton extends StatelessWidget {
  final String text;
  final double? textSize;
  final BorderRadius? borderRadius;
  final Widget? icon;
  final Color? backgroundColor;
  const AppOutlineButton(
      {super.key,
      required this.text,
      this.borderRadius,
      this.icon,
      this.textSize,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 12,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.primaryColor,
        ),
        color: backgroundColor,
        borderRadius: borderRadius ?? BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          if (icon != null)
            Padding(
              padding: const EdgeInsets.only(
                right: 8,
              ),
              child: Icon(
                Icons.shopping_bag,
                color: AppColors.primaryColor,
                size: 14,
              ),
            ),
          AppText.b1(
            content: text,
            fontSize: textSize ?? 12.sp,
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w700,
          )
        ],
      ),
    );
  }
}
