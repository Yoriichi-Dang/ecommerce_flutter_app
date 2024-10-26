import 'package:ecommerce_app/src/auth/presentation/pages/login.dart';
import 'package:ecommerce_app/src/auth/presentation/pages/register.dart';
import 'package:ecommerce_app/src/splash/presentation/pages/introduct.dart';
import 'package:ecommerce_app/src/splash/presentation/pages/splash.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static const String splash = '/splash';
  static const String login = '/login';
  static const String register = '/register';
  static const String introduct = '/introduct';
  static const String forgotPassword = '/forgot-password';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      case introduct:
        return MaterialPageRoute(builder: (_) => const IntroductPage());
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case register:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case forgotPassword:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      default:
        return MaterialPageRoute(builder: (_) => const Placeholder());
    }
  }
}
