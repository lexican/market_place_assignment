import 'package:flutter/material.dart';
import 'package:market_place_assignment/src/core/data/data.dart';
import 'package:market_place_assignment/src/core/widgets/home/product_item/product_item.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.4),
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return ProductItem(
              product: products[index],
            );
          },
          childCount: products.length,
        ),
      ),
    );
  }
}
