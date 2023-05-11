import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';

class AppBottomNavigationBarItem extends StatelessWidget {
  final String activeIconPath;
  final String inactiveIconPath;
  final String label;
  final Color? activeIconColor;
  final Color? inActiveIconColor;
  final Function(int) setCurrentTabIndex;
  final int tabIndex;
  final int currentTabIndex;
  final bool isSelectedTab;
  const AppBottomNavigationBarItem({
    super.key,
    required this.activeIconPath,
    required this.inactiveIconPath,
    required this.label,
    required this.setCurrentTabIndex,
    required this.tabIndex,
    required this.currentTabIndex,
    required this.isSelectedTab,
    this.activeIconColor,
    this.inActiveIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setCurrentTabIndex(tabIndex);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isSelectedTab
              ? SvgPicture.asset(
                  activeIconPath,
                  width: 24,
                  height: 24,
                  color: activeIconColor,
                )
              : SvgPicture.asset(
                  inactiveIconPath,
                  width: 24,
                  height: 24,
                  color: inActiveIconColor,
                ),
          isSelectedTab
              ? Text(
                  label,
                  style: TextStyle(
                    color: AppColors.headlineTextColor,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                  ),
                )
              : Text(
                  label,
                  style: TextStyle(
                    color: AppColors.bodyTextColor,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                )
        ],
      ),
    );
  }
}
