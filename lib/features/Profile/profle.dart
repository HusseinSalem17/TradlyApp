import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/features/Profile/widgets/profile_menu.dart';
import 'package:tradly_app/core/widgets/custom_app_bar_with_actions.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  static const routeName = '/user-profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AssetsColors.kPrimaryColor,
      appBar: CustomAppBarWithActions(
        title: 'Profile',
        onTapCartIcon: () {
          print('onTapCartIcon');
        },
        onTapFavoriteIcon: () {
          print('onTapFavoriteIcon');
        },
      ),
      body: Stack(
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
            child: Align(alignment: Alignment.topCenter, child: ProfileMenu()),
          )
        ],
      ),
    );
  }
}
