import 'package:flutter/material.dart';
import 'package:flutter_demo/components/food_card.dart';
import 'package:flutter_demo/components/food_categories.dart';
import 'package:flutter_demo/components/food_header.dart';
import 'package:flutter_demo/components/food_section_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          FoodHeader(
            title: 'Delivery',
          ),
          FoodSectionHeader(
            title: 'Categories',
          ),
          FoodCategories(),
          FoodSectionHeader(
            title: 'Popular',
          ),
          FoodCard(),
          FoodCard(),
          FoodCard(),
          FoodCard(),
          FoodCard(),
          FoodCard(),
          FoodCard(),
        ],
      ),
    );
  }
}
