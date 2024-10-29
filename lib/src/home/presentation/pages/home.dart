import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/locate_icon.svg',
                          width: 25,
                          color: AppColors.brown_300,
                        ),
                        Text(
                          'Danang city, Vietnam',
                          style: TextStyle(color: AppColors.brown_300),
                        )
                      ],
                    )
                  ],
                ),
                IconButton(
                  icon: Badge.count(
                      count: 9,
                      child: SvgPicture.asset(
                        'assets/icons/notification_icon.svg',
                        color: AppColors.brown_300,
                        width: 30,
                      )),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
