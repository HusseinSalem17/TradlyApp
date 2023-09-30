import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tradly_app/features/home_feature/presentation/views/home_screen.dart';

import 'package:tradly_app/features/onboarding_screen/presentation/views/onBoardviews.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/utils/image_assets.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../auth_feature/presentation/manager/user_hive_cubit/user_cubit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      final bool authenticationBloc =
          BlocProvider.of<UserHiveCubit>(context).checkLogged();
      if (authenticationBloc == true) {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AssetsColors.kSecondaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: AssetsColors.kSecondaryColor,
              ),
            ),
            child: Stack(
              children: [
                Center(
                  child: SvgPicture.asset(
                    AssetsImages.logo,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          const Center(
            child: Text(
              "Tradly",
              style: Styles.textStyleMedium30,
            ),
          ),
        ],
      ),
    );
  }
}
