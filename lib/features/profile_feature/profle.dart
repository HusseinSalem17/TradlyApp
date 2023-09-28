import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/core/widgets/custom_app_bar_with_actions.dart';
import 'package:tradly_app/features/auth_feature/presentation/manager/user_cubit/user_cubit.dart';
import 'package:tradly_app/features/profile_feature/widgets/profile_menu.dart';

import '../auth_feature/presentation/views/login_screen.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  static const routeName = '/user-profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AssetsColors.backgroundGroundColor,
      appBar: CustomAppBarWithActions(
        title: 'Profile',
        onTapCartIcon: () {
          print('onTapCartIcon');
        },
        onTapFavoriteIcon: () {
          print('onTapFavoriteIcon');
        },
      ),
      body:BlocListener<UserCubit, UserState>(
        listener: (context, state) {
          if (state is Logout) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              LoginScreen.routeName,
              (route) => false,
            );
          }
        },
        child:  Stack(
            children: [
              Container(
                color: AssetsColors.kSecondaryColor,
                height: MediaQuery.of(context).size.height / 3,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const Spacer(flex: 1),
                        SvgPicture.asset(
                          'assets/images/store_logo.svg',
                        ),
                        const Spacer(flex: 1),
                        const Column(
                          children: [
                            Text('Tradly team',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400)),
                            Text('+19998887776\ninfo@tradly.com',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300)),
                          ],
                        ),
                        const Spacer(flex: 10),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 140),
                child:
                    Align(alignment: Alignment.topCenter, child: ProfileMenu()),
              )
            ],
          ),
      )
    );
  }
}
