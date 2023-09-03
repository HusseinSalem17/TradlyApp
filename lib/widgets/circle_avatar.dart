import 'package:flutter/material.dart';
import 'package:tradly_app/constants.dart';

class circleAvatar extends StatelessWidget {
  const circleAvatar({super.key, this.isActive = false});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? const CircleAvatar(
            radius: 6,
            backgroundColor: kprimaryColor,
          )
        :  CircleAvatar(
            radius: 6,
            backgroundColor: kprimaryColor.withOpacity(0.4),
          );
  }
}
