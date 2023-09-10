import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tradly_app/constants.dart';
import 'package:tradly_app/models/onboard_model.dart';

import 'package:tradly_app/widgets/custom_botton.dart';

import '../core/utils/colors.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: onboardData.length,
              controller: _pageController,
              itemBuilder: (context, index) => OnboardingContent(
                image: onboardData[index].image,
                description: onboardData[index].description,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomBottom(
              width: MediaQuery.of(context).size.width,
              bottomTitle: 'Next',
              onTap: () {
                _pageController.nextPage(
                    duration: Duration(microseconds: 300), curve: Curves.ease);
              },
            ),
          ),
          const SizedBox(
            height: 80,
          )
        ],
      )),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  OnboardingContent(
      {super.key, required this.image, required this.description});

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
              color: kPrimaryColor,
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
              color: kPrimaryColor, fontSize: 26, fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 1),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [

        //   ],
        // ),
        const Spacer(flex: 1),
      ],
    );
  }
}

final List<Onboard> onboardData = [
  Onboard(
      image: 'assets/images/onboarding1.svg',
      description: 'Empowering Artisans, \nFarmers & Micro Business'),
  Onboard(
      image: 'assets/images/onboarding2.svg',
      description: 'Connecting NGOs, \nSocial Enterprises with Communities'),
  Onboard(
      image: 'assets/images/onboarding3.svg',
      description: ' Donate, Invest & Support \ninfrastructure projects'),
];
