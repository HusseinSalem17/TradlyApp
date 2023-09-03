import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tradly_app/constants.dart';
import 'package:tradly_app/widgets/custom_botton.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 400,
          color: kprimaryColor,
        ),
        SvgPicture.asset(
          'assets/images/Rectangle.svg',
        ),
        const Text('Empowering Artisans,',
            style: TextStyle(
              color: kprimaryColor,
            )),
        const Text(' Farmers & Micro Business'),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomBottom(),
        ),

      ],
    ));
  }
}
