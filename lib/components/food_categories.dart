import 'package:flutter/material.dart';
import 'package:flutter_demo/components/food_category.dart';

class FoodCategories extends StatefulWidget {
  const FoodCategories({super.key});

  @override
  State<FoodCategories> createState() => _FoodCategoriesState();
}

class _FoodCategoriesState extends State<FoodCategories> {
  String currentTitle = 'Pizza';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Row(
          children: <FoodCategory>[
            FoodCategory(
              title: 'Pizza',
              icon: 'assets/pizza-icon.png',
              selected: currentTitle == 'Pizza',
              onTap: (title) {
                setState(() {
                  currentTitle = title;
                });
              },
            ),
            FoodCategory(
              title: 'Seafood',
              icon: 'assets/shrimp-icon.png',
              selected: currentTitle == 'Seafood',
              onTap: (title) {
                setState(() {
                  currentTitle = title;
                });
              },
            ),
            FoodCategory(
              title: 'Soft Drinks',
              icon: 'assets/soda-icon.png',
              selected: currentTitle == 'Soft Drinks',
              onTap: (title) {
                setState(() {
                  currentTitle = title;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
