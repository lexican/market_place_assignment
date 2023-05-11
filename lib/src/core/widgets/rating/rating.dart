import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Rating extends StatelessWidget {
  final double size;
  const Rating({
    super.key,
    this.size = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      size: 12.sp,
      color: const Color(
        0xFFe39c4b,
      ),
    );
  }
}
