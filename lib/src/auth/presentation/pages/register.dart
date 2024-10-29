import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:ecommerce_app/core/animation/page_transition.dart';
import 'package:ecommerce_app/src/auth/presentation/pages/login.dart';
import 'package:ecommerce_app/src/auth/presentation/widgets/button.dart';
import 'package:ecommerce_app/src/auth/presentation/widgets/input_form.dart';
import 'package:ecommerce_app/src/auth/presentation/widgets/layouts/auth_layout.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      title: 'Register',
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            InputForm(
              pathIcon: "assets/icons/email_icon.svg",
              hintText: "Email",
              controller: _emailController,
              validateText: 'Please enter valid email',
            ),
            const SizedBox(
              height: 10,
            ),
            InputForm(
              pathIcon: "assets/icons/user_icon.svg",
              hintText: "Username",
              controller: _usernameController,
              validateText: 'Please enter valid username',
            ),
            const SizedBox(
              height: 10,
            ),
            InputForm(
              pathIcon: "assets/icons/phone_icon.svg",
              controller: _phoneController,
              hintText: "Phone",
              validateText: 'Please enter valid phone number',
            ),
            const SizedBox(
              height: 10,
            ),
            InputForm(
              pathIcon: "assets/icons/lock_icon.svg",
              isPassword: true,
              controller: _passwordController,
              validateText: 'Please enter valid password',
              hintText: "Password",
            ),
            const SizedBox(
              height: 30,
            ),
            Button(
              title: 'Login',
              width: double.infinity,
              onPress: () {
                if (_formKey.currentState!.validate()) {
                  print('hello');
                }
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?\t',
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(PageTransition.changeRoute(const LoginPage()));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.brown_400,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
