import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tradly_app/constants.dart';
import 'package:tradly_app/widgets/circle_avatar.dart';
import 'package:tradly_app/widgets/custom_botton.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 350,
              color: kprimaryColor,
            ),
            Positioned(
              left: 50,
              top: 170,
              child: SvgPicture.asset(
                'assets/images/onboarding2.svg',
              ),
            ),
          ],
        ),
        const Spacer(flex: 6),
        const Text('Connecting NGOs, Social',
            style: TextStyle(
                color: kprimaryColor,
                fontSize: 28,
                fontWeight: FontWeight.w400)),
        const Text('Enterprises with Communities',
            style: TextStyle(
                color: kprimaryColor,
                fontSize: 28,
                fontWeight: FontWeight.w400)),
        const Spacer(flex: 1),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            circleAvatar(),
            SizedBox(width: 10),
            circleAvatar(isActive: true),
            SizedBox(width: 10),
            circleAvatar(),
          ],
        ),
        const Spacer(flex: 1),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomBottom(
            width: MediaQuery.of(context).size.width,
            bottomTitle: 'Next',
          ),
        ),
        const Spacer(flex: 1),
      ],
    ));
  }
}
