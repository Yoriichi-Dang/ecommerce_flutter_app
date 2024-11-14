import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:ecommerce_app/src/home/presentation/widgets/category_item.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Map<String, String>> categories = [
      {
        'Jewelry': 'assets/icons/jewelry_icon.svg',
      },
      {
        "Furniture": "assets/icons/furniture_icon.svg",
      },
      {
        "Cosmetic": "assets/icons/cosmetic_icon.svg",
      },
      {
        "Fashion": "assets/icons/shirt_icon.svg",
      },
      {
        "Stationery": "assets/icons/stationery_icon.svg",
      },
      {"Tech": "assets/icons/tech_icon.svg"},
      {"Book": "assets/icons/book_icon.svg"}
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Category',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.brown_400),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'See all',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.brown_200),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 130, // Set a fixed height for the horizontal ListView
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoryItem(
                  pathIcon: categories[index].values.first,
                  title: categories[index].keys.first);
            },
          ),
        ),
      ],
    );
  }
}
