import 'package:flutter/material.dart';
import 'package:tradly_app/core/onboarding_screen/views/onBoardviews.dart';
import 'package:tradly_app/core/onboarding_screen/views/widgets/onboarding_content.dart';

import 'features/auth_feature/presentation/views/login_screen.dart';
import 'features/auth_feature/presentation/views/signup_screen.dart';
import 'features/product_detailes_feature/presentation/views/product_detail_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case SignUpScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      );
    case OnBoardingView.routeName:
      return MaterialPageRoute(
        builder: (context) => const OnBoardingView(),
      );

    /// the productDetailScreen not have a logic yet now !!!!
    // case ProductDetailsScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (context) =>  ProductDetailsScreen(model: ,),
    //   );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Scaffold(
            body: Text('This Page not found'),
          ),
        ),
      );
  }
}
