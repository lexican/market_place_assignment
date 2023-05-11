import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';

class AppBadge extends StatelessWidget {
  final IconData icon;
  final String count;
  const AppBadge({
    super.key,
    required this.icon,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        IconButton(
          icon: Icon(
            icon,
            color: Colors.black,
            size: 28.sp,
          ),
          onPressed: () {},
        ),
        Positioned(
          right: 0,
          top: 4,
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(4),
            ),
            constraints: BoxConstraints(
              minWidth: 22.w,
              minHeight: 18.h,
            ),
            child: Center(
              child: Text(
                count,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )
      ],
    );
  }
}
