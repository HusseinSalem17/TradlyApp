import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/features/Profile/widgets/profile_menu.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});
  static const routeName = '/user-profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AssetsColors.kPrimaryColor,
      appBar: AppBar(
        title: const Text('Profile',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 24,
                fontFamily: 'Montserrat')),
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: AssetsColors.kSecondaryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.solidHeart,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.cartShopping,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          const Align(child: Positioned(child: ProfileMenu())),
          Container(
            color: AssetsColors.kSecondaryColor,
            height: MediaQuery.of(context).size.height / 3,
            child: Column(
              children: [
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
        ],
      ),
    );
  }
}
