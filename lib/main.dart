import 'package:flutter/material.dart';

import 'package:tradly_app/core/utils/app_theme.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/send_OTP.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/widgets/Verify.dart';
import 'package:tradly_app/features/home_feature/presentation/views/home_screen.dart';
import 'package:tradly_app/routes.dart';
import 'core/onboarding_screen/views/onBoardviews.dart';
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
      home:  const SplashScreen(),
      onGenerateRoute: (settings) => generateRoute(settings),
    );
  }
}
