import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:ecommerce_app/core/animation/page_transition.dart';
import 'package:ecommerce_app/src/auth/presentation/pages/register.dart';
import 'package:ecommerce_app/src/auth/presentation/widgets/button.dart';
import 'package:ecommerce_app/src/auth/presentation/widgets/input_form.dart';
import 'package:ecommerce_app/src/auth/presentation/widgets/layouts/auth_layout.dart';
import 'package:ecommerce_app/src/root/presentation/pages/root.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      title: 'Login',
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
              pathIcon: "assets/icons/lock_icon.svg",
              hintText: "Password",
              controller: _passwordController,
              validateText: 'Please enter valid password',
              isPassword: true,
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
                    color: AppColors.brown_300,
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
                if (_formKey.currentState!.validate()) {
                  Navigator.of(context)
                      .push(PageTransition.changeRoute(const RootPage()));
                }
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
              pathIcon: 'assets/icons/google_icon.svg',
              backgroundColor: Colors.grey.shade400,
              title: 'Login with google',
              onPress: () {},
              width: double.infinity,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don"t have an account?\t',
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(PageTransition.changeRoute(const RegisterPage()));
                  },
                  child: const Text(
                    'Register',
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
