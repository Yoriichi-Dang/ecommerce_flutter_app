import 'package:ecommerce_app/src/auth/presentation/pages/login.dart';
import 'package:ecommerce_app/src/auth/presentation/pages/register.dart';
import 'package:ecommerce_app/src/root/presentation/pages/root.dart';
import 'package:ecommerce_app/src/splash/presentation/pages/splash.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static const String splash = '/splash';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  static const String root = "/root";
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case register:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case forgotPassword:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      case root:
        return MaterialPageRoute(builder: (_) => const RootPage());
      default:
        return MaterialPageRoute(builder: (_) => const Placeholder());
    }
  }
}
