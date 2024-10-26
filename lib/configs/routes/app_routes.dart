import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static const String splash = '/splash';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      case splash:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      case login:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      case register:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      case forgotPassword:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      default:
        return MaterialPageRoute(builder: (_) => const Placeholder());
    }
  }
}
