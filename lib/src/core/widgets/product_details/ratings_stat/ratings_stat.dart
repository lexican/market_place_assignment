import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app_colors.dart';
import '../../widgets.dart';

class RatingsStat extends StatelessWidget {
  final String stat;
  final double value;
  final int index;
  const RatingsStat({
    super.key,
    required this.stat,
    required this.value,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Rating(
          size: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          child: AppText.b1(
            content: index.toString(),
            fontSize: 12.sp,
          ),
        ),
        Expanded(
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 6,
              thumbColor: Colors.transparent,
              thumbShape: SliderComponentShape.noThumb,
              overlayShape: SliderComponentShape.noOverlay,
              disabledActiveTrackColor: () {
                return AppColors.primaryColor;
              }(),
            ),
            child: Slider(
              value: value,
              onChanged: null,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          child: AppText.h1(
            content: stat,
            fontWeight: FontWeight.w700,
            fontSize: 10.sp,
          ),
        ),
      ],
    );
  }
}
