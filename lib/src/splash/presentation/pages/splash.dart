import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int countdown = 3;
  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  Future<void> startCountdown() async {
    for (int i = countdown; i > 0; i--) {
      await Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          countdown--;
        });
      });
    }
    // Hành động khi đếm ngược kết thúc
    Navigator.pushReplacementNamed(context, '/root');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary_100,
      body: Center(
        child: Image.asset(
          'assets/images/logo_1.png',
          width: 500,
          height: 500,
        ),
      ),
    );
  }
}
