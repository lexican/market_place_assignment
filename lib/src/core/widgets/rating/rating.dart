import 'package:flutter/material.dart';

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
      size: size,
      color: const Color(
        0xFFe39c4b,
      ),
    );
  }
}
