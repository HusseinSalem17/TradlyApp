import 'package:flutter/material.dart';
import 'package:tradly_app/views/onboardingviews/onBoarding_3.dart';
import 'package:tradly_app/widgets/splash_screen.dart';

void main() {
  runApp(const TradlyApp());
}

class TradlyApp extends StatelessWidget {
  const TradlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
