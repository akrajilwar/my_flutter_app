import 'package:flutter/material.dart';

import 'views/home_page.dart';
import 'views/splash_screen.dart';
import 'views/undefined_page.dart';

class Routes {
  static const String root = '/';
  static const String home = '/home';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case root:
        return MaterialPageRoute(builder: (context) {
          return const SplashScreen();
        });
      case home:
        return MaterialPageRoute(builder: (context) => const HomePage());
      default:
        return MaterialPageRoute(
            builder: (context) => UndefinedView(name: settings.name));
    }
  }
}