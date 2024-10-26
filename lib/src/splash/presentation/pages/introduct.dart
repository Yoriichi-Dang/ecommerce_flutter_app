import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:ecommerce_app/core/animation/page_transition.dart';
import 'package:ecommerce_app/src/auth/presentation/pages/login.dart';
import 'package:ecommerce_app/src/auth/presentation/widgets/button.dart';
import 'package:flutter/material.dart';

class IntroductPage extends StatelessWidget {
  const IntroductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary_100,
      body: Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          Center(
            child: Image.asset(
              'assets/images/ecommerce_icon_2.png',
              width: 350,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Catsandra',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'RobotoSlab',
              color: AppColors.secondary_300,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Ecommerce platform for shopping online',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade500,
              fontFamily: 'Roboto',
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Button(
            title: 'Next',
            onPress: () {
              Navigator.of(context).pushReplacement(
                  PageTransition.changeRoute(const LoginPage()));
            },
          )
        ],
      ),
    );
  }
}
