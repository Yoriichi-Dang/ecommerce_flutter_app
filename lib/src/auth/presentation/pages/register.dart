import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:ecommerce_app/core/animation/page_transition.dart';
import 'package:ecommerce_app/src/auth/presentation/pages/login.dart';
import 'package:ecommerce_app/src/auth/presentation/widgets/button.dart';
import 'package:ecommerce_app/src/auth/presentation/widgets/input_form.dart';
import 'package:ecommerce_app/src/auth/presentation/widgets/layout/auth_layout.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      title: 'Register',
      child: Column(
        children: [
          const InputForm(
              pathIcon: 'assets/icons/email_icon.svg', hintText: 'Email'),
          const SizedBox(
            height: 20,
          ),
          const InputForm(
              pathIcon: 'assets/icons/user_icon.svg', hintText: 'Username'),
          const SizedBox(
            height: 20,
          ),
          const InputForm(
            pathIcon: 'assets/icons/lock_icon.svg',
            hintText: 'Password',
            isPassword: true,
          ),
          const SizedBox(
            height: 40,
          ),
          Button(
            title: 'Register',
            onPress: () {},
            width: double.infinity,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?\t',
                style: TextStyle(color: Colors.grey.shade600),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, PageTransition.changeRoute(const LoginPage()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.secondary_300),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
