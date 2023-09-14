import 'package:flutter/material.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/verify_screen.dart';
import 'package:tradly_app/features/home_feature/presentation/views/home_screen.dart';
import 'package:tradly_app/features/home_feature/presentation/views/home_view.dart';
import 'package:tradly_app/features/onboarding_screen/presentation/views/onBoardviews.dart';

import 'features/auth_feature/presentation/views/login_screen.dart';
import 'features/auth_feature/presentation/views/signup_screen.dart';
import 'features/home_feature/presentation/views/my_home_screen.dart';
import 'features/store_feature/presentation/views/store_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
        builder: (context) => const MyHomePage(),
      );
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case StoreScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const StoreScreen(),
      );
    case SignUpScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      );
    case OnBoardingView.routeName:
      return MaterialPageRoute(
        builder: (context) => const OnBoardingView(),
      );
    case VerifyView.routeName:
      final int verifyId = settings.arguments as int;
      return MaterialPageRoute(
        builder: (context) => VerifyView(verifyId: verifyId),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
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
