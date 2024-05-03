import 'package:flutter/material.dart';
import 'package:meals_ordering_app/core/router/routes.dart';
import 'package:meals_ordering_app/features/login/ui/login_screen.dart';
import 'package:meals_ordering_app/features/onboarding/onboading_screen.dart';
import 'package:meals_ordering_app/presentation/screans/detailsScrean.dart';
import 'package:meals_ordering_app/presentation/screans/home_screan.dart';
import 'package:meals_ordering_app/presentation/screans/splash_screan.dart';


class AppRouter {
  static Route<dynamic> onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutesString.homeScrean:
        return MaterialPageRoute(
          builder: (context) => const HomeScrean(),
        );
        case RoutesString.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
         case RoutesString.onboardingScrean:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      case RoutesString.splashScrean:
        return MaterialPageRoute(
          builder: (context) => const SplashScrean(),
        );
      case RoutesString.detailsScrean:
        return MaterialPageRoute(
          builder: (context) => const DetailsScrean(),
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('noRouteFound'),
        ),
        body: const Center(child: Text('noRouteFound')),
      ),
    );
  }
}
