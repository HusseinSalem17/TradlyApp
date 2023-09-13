import 'package:flutter/material.dart';
import 'package:tradly_app/core/utils/app_theme.dart';
import 'package:tradly_app/features/home_feature/presentation/views/my_home_screen.dart';
import 'package:tradly_app/routes.dart';

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
      home:  MyHomePage(),
      onGenerateRoute: (settings) => generateRoute(settings),
    );
  }
}
