import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place_assignment/src/core/app_colors.dart';
import 'package:market_place_assignment/src/core/model/product_model.dart';
import 'package:market_place_assignment/src/core/widgets/home/product_list/product_list.dart';

import '../../core/widgets/widgets.dart';

class ProductDetails extends StatefulWidget {
  final ProductModel product;
  const ProductDetails({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails>
    with TickerProviderStateMixin {
  late ProductModel product;

  late TabController _tabController;

  @override
  void initState() {
    product = widget.product;
    _tabController = TabController(
      initialIndex: 0,
      length: 2, // adjust your length
      vsync: this,
    );
    super.initState();
  }

  var widgetsList = [
    [
      const AboutProduct(),
      const AppDivider(),
      const ProductDescription(),
      const AppDivider(),
      const ShipingInfo(),
      const AppDivider(),
      const SellerInfo(),
      const AppDivider(),
      const ReviewsAndRating(),
      const ReviewsWithImagesAndVideos(),
      const AppDivider(),
      const TopReviews(),
      const TopReviewsPagination(),
      const RecommendationsHeader(),
      const ProductList()
    ],
    [
      const Reviews(),
    ]
  ];

  List<Widget> _getTabAtIndex(int index) {
    return widgetsList[index];
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
      body: DefaultTabController(
        length: 2,
        child: CustomScrollView(
          slivers: [
            ProductImageCard(
              imagePath: product.imagePath,
            ),
            const ProductTitleAndStat(),
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: AppColors.lightGrey,
                    ),
                  ),
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: TabBar(
                  labelColor: AppColors.primaryColor,
                  controller: _tabController,
                  indicatorColor: AppColors.primaryColor,
                  unselectedLabelColor: AppColors.lightGrey,
                  onTap: ((value) {
                    setState(() {});
                  }),
                  labelStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                  tabs: const [
                    Tab(
                      text: 'About Item',
                    ),
                    Tab(
                      text: 'Reviews',
                    )
                  ],
                ),
              ),
            ),
            ..._getTabAtIndex(_tabController.index),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          color: Colors.white,
          height: kToolbarHeight * 1.5,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.b1(
                    content: "Total price",
                    fontSize: 10.sp,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  AppText.h1(
                    content: "\$18.00",
                    color: AppColors.primaryColor,
                    fontSize: 20.sp,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          AppText.b1(
                            content: "1",
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 12,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppText.b1(
                            content: "Buy Now",
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
}
