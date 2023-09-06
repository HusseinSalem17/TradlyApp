import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tradly_app/widgets/custom_icon.dart';

class customBottomAppBar extends StatelessWidget {
  const customBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: 80,
        child: Row(
          children: [
            const Spacer(flex: 1),
            CustomIcon(
                icon: FontAwesomeIcons.house,
                color: Colors.grey,
                title: 'Home'),
            const Spacer(flex: 1),
            CustomIcon(
                icon: FontAwesomeIcons.magnifyingGlass,
                color: Colors.grey,
                title: 'Browse'),
            const Spacer(flex: 1),
            CustomIcon(
                icon: FontAwesomeIcons.store,
                color: Colors.grey,
                title: 'Store'),
            const Spacer(flex: 1),
            CustomIcon(
                icon: FontAwesomeIcons.listCheck,
                color: Colors.grey,
                title: 'Order History'),
            const Spacer(flex: 1),
            CustomIcon(
                icon: Icons.person_3_sharp,
                color: Colors.grey,
                title: 'Profile'),
            const Spacer(flex: 1),
          ],
        ));
  }
}