import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImageCard extends StatelessWidget {
  final String imagePath;
  const ProductImageCard({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(
                12,
              ),
              child: Stack(
                children: [
                  Image.asset(
                    imagePath,
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 20,
                    top: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                          child: Image.asset(
                            imagePath,
                            height: 40.h,
                            width: 40.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                          child: Image.asset(
                            imagePath,
                            height: 40.h,
                            width: 40.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                          child: Image.asset(
                            imagePath,
                            height: 40.h,
                            width: 40.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                          child: Image.asset(
                            imagePath,
                            height: 40.h,
                            width: 40.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
