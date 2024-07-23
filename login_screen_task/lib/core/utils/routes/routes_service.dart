import 'package:flutter/material.dart';
import 'package:login_screen_task/features/auth/presentation/screens/register_screen.dart';
import 'package:login_screen_task/features/onboarding/presentation/screens/splash_screen.dart';
import '../../../features/auth/presentation/screens/login_screen.dart';
import 'routes_enum.dart';

class RoutesService {
  const RoutesService._();
  static const instance = RoutesService._();
  Map<String, Widget Function(BuildContext context)> getRoutes(
      BuildContext context) {
    return <String, Widget Function(BuildContext context)>{
      Routes.splash.path: (_) => const SplashScreen(),
      Routes.login.path: (_) => const LoginScreen(),
      Routes.register.path: (_) => const RegisterScreen(),
    };
  }
}
