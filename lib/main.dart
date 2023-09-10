import 'package:flutter/material.dart';
import 'package:tradly_app/core/utils/app_theme.dart';
import 'package:tradly_app/routes.dart';
import 'core/splash/presentation/views/splash_screen.dart';

void main() {
  runApp(const TradlyApp());
}

class TradlyApp extends StatelessWidget {
  const TradlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.CustomlightTheme,
      home: const SplashScreen(),
      onGenerateRoute: (settings) => generateRoute(settings),
    );
  }
}
