import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/src/core/widgets/app_text/app_text.dart';

class AppBullet extends StatelessWidget {
  const AppBullet({super.key});

  @override
  Widget build(BuildContext context) {
    return AppText.b1(
      content: '\u2022',
      fontSize: 14.sp,
    );
  }
}
