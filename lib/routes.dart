import 'package:flutter/material.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/verify_screen.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/home_body.dart';
import 'package:tradly_app/features/onboarding_screen/presentation/views/onBoardviews.dart';
import 'package:tradly_app/features/onboarding_screen/presentation/views/splash_screen.dart';
import 'package:tradly_app/features/store_feature/presentation/views/create_store_screen.dart';

import 'features/auth_feature/presentation/views/login_screen.dart';
import 'features/auth_feature/presentation/views/signup_screen.dart';
import 'features/home_feature/presentation/views/home_screen.dart';
import 'features/store_feature/presentation/views/store_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
//----- OnBoarding Routing -----
    case OnBoardingView.routeName:
      return MaterialPageRoute(
        builder: (context) => const OnBoardingView(),
      );

//----- Main Routing -----
    case '/':
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );

//----- Auth Routing -----
    case SignUpScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      );
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );

//----- Verify Routing -----
    case VerifyView.routeName:
      final int verifyId = settings.arguments as int;
      return MaterialPageRoute(
        builder: (context) => VerifyView(verifyId: verifyId),
      );

//----- Home Routing -----
    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );

//----- Store Routing -----
    case StoreScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const StoreScreen(),
      );
    case CreateStoreScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const CreateStoreScreen(),
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
