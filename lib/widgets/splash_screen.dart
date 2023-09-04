import 'package:flutter/material.dart';
import 'package:tradly_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                Center(
                  child: Text(
                    'T',
                    style: TextStyle(
                      fontSize: 90,
                      fontWeight: FontWeight.w200,
                      color: Color(0xff21CBAA),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //SvgPicture.asset('assets/images/Rectangle.svg'),
          Center(
            child: Text(
              "Tradly",
              style: TextStyle(
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
