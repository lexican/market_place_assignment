import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';
import 'package:market_place_assignment/src/core/model/product_model.dart';
import 'package:market_place_assignment/src/core/widgets/badge/badge.dart';
import 'package:market_place_assignment/src/core/widgets/product_details/product_description.dart';
import 'package:market_place_assignment/src/core/widgets/product_details/product_image_card.dart';

class ProductDetails extends StatefulWidget {
  final ProductModel product;
  const ProductDetails({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late ProductModel product;

  @override
  void initState() {
    super.initState();
    product = widget.product;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.backgroundColor,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          GestureDetector(
            child: product.isFavourite
                ? Icon(
                    Icons.favorite,
                    color: AppColors.secondaryColor,
                  )
                : const Icon(
                    Icons.favorite_outline,
                    color: Colors.black,
                  ),
          ),
          SizedBox(
            width: 20.w,
          ),
          GestureDetector(
            child: const Icon(
              Icons.share_outlined,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          GestureDetector(
            child: const AppBadge(
              icon: Icons.shopping_bag_outlined,
              count: "1",
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          ProductImageCard(
            imagePath: product.imagePath,
          ),
          const ProductDescription(),
        ],
      ),
    );
  }
}
