import 'package:flutter/material.dart';

class FoodRate extends StatelessWidget {
  const FoodRate({
    super.key,
    required this.rate,
    this.spacing = 5,
  });

  final double rate;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: spacing,
      children: [
        const Icon(
          Icons.star,
          size: 12,
        ),
        Text(
          "$rate",
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
