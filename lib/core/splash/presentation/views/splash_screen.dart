import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tradly_app/core/onboarding_screen/views/onBoardviews.dart';

import '../../../../features/auth_feature/presentation/views/login_screen.dart';
import '../../../utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: kSecondaryColor,
              ),
            ),
            child: Stack(
              children: [
                Center(
                  child: SvgPicture.asset(
                    'assets/images/logo.svg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          const Center(
            child: Text(
              "Tradly",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
