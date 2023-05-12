import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';

class InputTextField extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final EdgeInsets? contentPadding;
  final Color? fillColor;

  const InputTextField({
    super.key,
    this.prefixIcon,
    this.hintText,
    this.hintStyle,
    this.controller,
    this.suffixIcon,
    this.contentPadding,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: AppColors.lightGrey,
            width: 0.8,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: AppColors.lightGrey,
            width: 0.8,
          ),
        ),
        filled: true,
        hintStyle: hintStyle ??
            TextStyle(
              color: AppColors.lightGrey,
              fontSize: 12.sp,
            ),
        hintText: hintText,
        fillColor: fillColor ?? Colors.transparent,
        contentPadding: contentPadding ?? const EdgeInsets.all(0),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        prefixIconConstraints: const BoxConstraints(
          minWidth: 18,
          minHeight: 18,
        ),
      ),
      controller: controller,
    );
  }
}
