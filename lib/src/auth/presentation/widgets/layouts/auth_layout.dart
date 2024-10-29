import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  final Widget child;
  final String title;
  const AuthLayout({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary_100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: Image.asset(
                      'assets/images/logo_1.png',
                      width: 250,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // Thêm nội dung khác của trang đăng nhập bên dưới
                child
              ],
            ),
          ),
        ),
      ),
    );
  }
}
