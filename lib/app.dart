import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/gen/fonts.gen.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';
import 'package:market_place_assignment/src/features/tab_view/tab_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Market Place',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: TextTheme(
              headline1: TextStyle(
                fontSize: 24.sp,
                color: AppColors.headlineTextColor,
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.openSans,
              ),
              bodyText1: TextStyle(
                fontSize: 12.sp,
                color: AppColors.bodyTextColor,
                fontWeight: FontWeight.w400,
                fontFamily: FontFamily.openSans,
              ),
            ),
          ),
          home: const TabView(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
