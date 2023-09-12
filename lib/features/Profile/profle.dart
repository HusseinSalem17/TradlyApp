import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tradly_app/core/utils/colors.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});
  static const routeName = '/user-profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: const Text('Profile',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 24,
                fontFamily: 'Montserrat')),
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: kSecondaryColor,
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
            color: kSecondaryColor,
            height: MediaQuery.of(context).size.height / 3,
            child: Column(
              children: [
                Row(
                  children: [
                    Spacer(flex: 1),
                    SvgPicture.asset(
                      'assets/images/store_logo.svg',
                    ),
                    Spacer(flex: 1),
                    Column(
                      children: [
                        Text('Tradly team',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                        Text('+19998887776\ninfo@tradly.com',
                            style: const TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w300)),
                                
                      ],
                    ),
                    Spacer(flex:10),
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

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 300,
      height: 300,
      //decoration: BoxDecoration(),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextButton(
          onPressed: () {},
          child: const Text('Edit Profile',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400)),
        ),
        const Divider(
          color: kPrimaryColor,
          height: 0,
          thickness: 1,
          indent: 10,
          endIndent: 10,
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Language & Currency',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400)),
        ),
        const Divider(
          color: kPrimaryColor,
          height: 0,
          thickness: 1,
          indent: 10,
          endIndent: 10,
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Feedback',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400)),
        ),
        const Divider(
          color: kPrimaryColor,
          height: 0,
          thickness: 1,
          indent: 10,
          endIndent: 10,
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Refer a Friend',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400)),
        ),
        const Divider(
          color: kPrimaryColor,
          height: 0,
          thickness: 1,
          indent: 10,
          endIndent: 10,
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Terms & Conditions',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400)),
        ),
        const Divider(
          color: kPrimaryColor,
          height: 0,
          thickness: 1,
          indent: 10,
          endIndent: 10,
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Logout',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400)),
        ),
      ]),
    );
  }
}
