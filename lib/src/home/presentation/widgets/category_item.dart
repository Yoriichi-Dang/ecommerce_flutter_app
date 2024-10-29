import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItem extends StatelessWidget {
  final String pathIcon;
  final String title;
  const CategoryItem({super.key, required this.pathIcon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          IconButton(
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(
              Colors.brown.shade100,
            )),
            padding: const EdgeInsets.all(18),
            highlightColor: AppColors.brown_100,
            onPressed: () {},
            icon: SvgPicture.asset(
              pathIcon,
              width: 40,
              color: AppColors.brown_200,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(title,
              style: TextStyle(
                  color: AppColors.brown_300, fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
