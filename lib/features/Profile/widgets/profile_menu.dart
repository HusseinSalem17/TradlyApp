import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
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
          color: AssetsColors.kPrimaryColor,
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
          color: AssetsColors.kPrimaryColor,
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
          color: AssetsColors.kPrimaryColor,
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
          color: AssetsColors.kPrimaryColor,
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
          color: AssetsColors.kPrimaryColor,
          height: 0,
          thickness: 1,
          indent: 10,
          endIndent: 10,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Logout',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ]),
    );
  }
}
