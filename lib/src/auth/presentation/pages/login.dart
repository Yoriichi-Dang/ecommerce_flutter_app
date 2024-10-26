import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:ecommerce_app/src/auth/presentation/widgets/button.dart';
import 'package:ecommerce_app/src/auth/presentation/widgets/input_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary_100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Image.asset(
                      'assets/images/ecommerce_icon.png',
                      width: 200,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: const Text(
                    'Login',
                    style: TextStyle(
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
                InputForm(
                  pathIcon: "assets/icons/email_icon.svg",
                  hintText: "Email",
                ),
                const SizedBox(
                  height: 10,
                ),
                InputForm(
                  pathIcon: "assets/icons/lock_icon.svg",
                  hintText: "Password",
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: AppColors.secondary_300,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Button(
                  title: 'Login',
                  width: double.infinity,
                  onPress: () {
                    print('hello');
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Or',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Button(
                  backgroundColor: Colors.grey.shade400,
                  title: 'Login with google',
                  onPress: () {},
                  width: double.infinity,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
