import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:ecommerce_app/src/home/presentation/widgets/coutdown_timer.dart';
import 'package:ecommerce_app/src/home/presentation/widgets/time_item.dart';
import 'package:flutter/material.dart';

class FlashSale extends StatefulWidget {
  final int hours;
  final int minutes;
  final int seconds;
  const FlashSale(
      {super.key,
      required this.hours,
      required this.minutes,
      required this.seconds});

  @override
  State<FlashSale> createState() => _FlashSaleState();
}

class _FlashSaleState extends State<FlashSale> {
  String hoursStr = "";
  String minutesStr = "";
  String secondsStr = "";
  late CountdownTimer countdown;
  @override
  void initState() {
    super.initState();
    countdown = CountdownTimer(
        hours: widget.hours, minutes: widget.minutes, seconds: widget.hours);
    countdown.start(
      (int hours, int minutes, int seconds) {
        if (mounted) {
          setState(() {
            hoursStr = hours.toString();
            minutesStr = minutes.toString();
            secondsStr = seconds.toString();
          });
        }
      },
      () {
        print("Đếm ngược hoàn tất!");
      },
    );
  }

  @override
  void dispose() {
    countdown.stop(); // Stop the timer
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              'Flash sale',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoSlab'),
            ),
            const SizedBox(
              width: 20,
            ),
            TimeItem(time: hoursStr),
            Container(
              child: Text(
                ':',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: AppColors.brown_300),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 5),
            ),
            TimeItem(time: minutesStr),
            Container(
              child: Text(
                ':',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: AppColors.brown_300),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 5),
            ),
            TimeItem(time: secondsStr),
          ],
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
        )
      ],
    );
  }
}
