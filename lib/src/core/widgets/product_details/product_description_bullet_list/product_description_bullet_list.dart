import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/src/core/widgets/app_text/app_text.dart';

class ProductDescriptionBulletList extends StatelessWidget {
  final List<String> strings;

  const ProductDescriptionBulletList({required this.strings, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: strings.map((str) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.b1(
                content: '\u2022',
                fontSize: 12.sp,
                height: 1.2.h,
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: AppText.b1(
                  content: str,
                  softWrap: true,
                  fontSize: 12.sp,
                  height: 1.55,
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
