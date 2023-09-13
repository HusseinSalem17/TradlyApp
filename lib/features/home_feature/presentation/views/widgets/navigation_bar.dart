import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_icon.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: 80,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 1),
                CustomIcon(
                    icon: FontAwesomeIcons.house,
                    color: Colors.grey,
                    title: 'Home'),
                Spacer(flex: 1),
                CustomIcon(
                    icon: FontAwesomeIcons.magnifyingGlass,
                    color: Colors.grey,
                    title: 'Browse'),
                Spacer(flex: 1),
                CustomIcon(
                    icon: FontAwesomeIcons.store,
                    color: Colors.grey,
                    title: 'Store'),
                Spacer(flex: 1),
                CustomIcon(
                    icon: FontAwesomeIcons.listCheck,
                    color: Colors.grey,
                    title: 'Order History'),
                Spacer(flex: 1),
                CustomIcon(
                    icon: Icons.person_3_sharp,
                    color: Colors.grey,
                    title: 'Profile'),
                Spacer(flex: 1),
              ],
            ),
          ],
        ));
  }
}
