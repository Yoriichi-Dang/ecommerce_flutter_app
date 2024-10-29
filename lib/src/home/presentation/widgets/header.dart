import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  final String location;
  final int numberNotification;
  const Header({
    super.key,
    required this.location,
    required this.numberNotification,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location',
              style: TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.grey.shade600),
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
                  location,
                  style: TextStyle(
                      color: AppColors.brown_300, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ],
        ),
        IconButton(
          icon: Badge.count(
              count: numberNotification,
              child: SvgPicture.asset(
                'assets/icons/notification_icon.svg',
                color: AppColors.brown_300,
                width: 30,
              )),
          onPressed: () {},
        ),
      ],
    );
  }
}
