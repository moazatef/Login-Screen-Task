import 'package:flutter/material.dart';
import 'package:login_screen_task/core/utils/routes/routes_enum.dart';

import 'core/utils/routes/routes_service.dart';
import 'core/utils/themes/theme_service.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeService.instance.defaultTheme,
      initialRoute: Routes.splash.path,
      routes: RoutesService.instance.getRoutes(context),
    );
  }
}
