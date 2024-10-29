import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class SearchNavBar extends StatefulWidget {
  const SearchNavBar({super.key});

  @override
  State<SearchNavBar> createState() => _SearchNavBarState();
}

class _SearchNavBarState extends State<SearchNavBar> {
  String content = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            onChanged: (value) {
              setState(() {
                content = value;
              });
            },
            cursorColor: AppColors.brown_400,
            decoration: InputDecoration(
              prefixIcon: Icon(
                size: 30,
                Icons.search,
                color: AppColors.brown_300,
              ),
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt, color: AppColors.brown_300)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColors.brown_300),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        IconButton(
          style: ButtonStyle(
              padding:
                  WidgetStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
              backgroundColor:
                  WidgetStateProperty.all<Color>(AppColors.brown_200)),
          icon: Icon(Icons.filter_list_alt),
          onPressed: () {},
        )
      ],
    );
  }
}
