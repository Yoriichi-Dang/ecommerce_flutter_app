import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class TimeItem extends StatelessWidget {
  final String time;
  const TimeItem({super.key, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: AppColors.brown_200),
      child: Text(
        time,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 17),
      ),
    );
  }
}
