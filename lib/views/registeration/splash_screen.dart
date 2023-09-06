import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradly_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tradly_app/views/registeration/login_screen.dart';
import 'package:tradly_app/views/registeration/signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const LoginScreen(),
          transition: Transition.fade,
          duration: const Duration(milliseconds: 250));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor,
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: kprimaryColor,
              ),
            ),
            child: Stack(
              children: [
                Center(
                  child: SvgPicture.asset(
                    'assets/images/Rectangle.svg',
                    fit: BoxFit.cover,
                  ),
                ),
                const Center(
                  child: Text(
                    'T',
                    style: TextStyle(
                      fontSize: 75,
                      fontWeight: FontWeight.w200,
                      color: Color(0xff21CBAA),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Text(
            "Tradly",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
