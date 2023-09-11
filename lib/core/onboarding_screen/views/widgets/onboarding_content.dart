import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/colors.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    super.key,
    required this.image,
    required this.description,
  });

  final String image;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 350,
              color: kSecondaryColor,
            ),
            Positioned(
              left: 50,
              top: 170,
              child: SvgPicture.asset(
                image,
              ),
            ),
          ],
        ),
        const Spacer(flex: 6),
        Text(
          description,
          style: const TextStyle(
            color: kSecondaryColor,
            fontSize: 26,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 1),
      ],
    );
  }
}
