import 'package:flutter/material.dart';
import 'package:tradly_app/core/onboarding_screen/views/widgets/indicator.dart';
import 'package:tradly_app/core/onboarding_screen/views/widgets/onboarding_content.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/login_screen.dart';
import 'package:tradly_app/models/onboard_model.dart';
import 'package:tradly_app/widgets/custom_botton.dart';

class OnBoardingView extends StatefulWidget {
  static const routeName = '/on-boarding';

  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late PageController _pageController;
  int _pageIndex = 0;

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
      body: SafeArea(
          child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: onboardData.length,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                controller: _pageController,
                itemBuilder: (context, index) => OnBoardingContent(
                  image: onboardData[index].image,
                  description: onboardData[index].description,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  onboardData.length,
                  (index) => Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    child: DoIndicator(
                      isActive: index == _pageIndex,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(
                width: MediaQuery.of(context).size.width,
                bottomTitle: _pageIndex == 2 ? 'Finish' : 'Next',
                onTap: () {
                  if (_pageIndex == 2) {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      LoginScreen.routeName,
                      (route) => false,
                    );
                  }
                  _pageController.nextPage(
                    duration: const Duration(microseconds: 300),
                    curve: Curves.ease,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 80,
            )
          ],
        ),
      )),
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
