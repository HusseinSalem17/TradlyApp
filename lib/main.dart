import 'package:flutter/material.dart';
import 'package:tradly_app/core/utils/app_theme.dart';
import 'package:tradly_app/views/onBoardviews.dart';
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
      // routes: {
      //   'LoginScreen': (context) => LoginScreen(),
      //   'SignUpScreen': (context) => SignUpScreen(),
      // },
      // initialRoute: 'LoginScreen',
      theme: Themes.CustomlightTheme,
      home:  OnBoardingView(),
    );
  }
}
