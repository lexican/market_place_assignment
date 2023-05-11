import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/src/core/widgets/app_text/app_text.dart';

class AboutProductItem extends StatelessWidget {
  final String title;
  final String value;
  const AboutProductItem({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppText.b1(content: title),
          SizedBox(
            width: 16.w,
          ),
          AppText.h1(
            content: value,
            fontWeight: FontWeight.w700,
            fontSize: 12.sp,
          )
        ],
      ),
    );
  }
}
