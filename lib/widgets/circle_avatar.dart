import 'package:flutter/material.dart';

import '../core/utils/colors.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar(bool bool, {super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? const CircleAvatar(
            radius: 6,
            backgroundColor: kPrimaryColor,
          )
        :  CircleAvatar(
            radius: 6,
            backgroundColor: kPrimaryColor.withOpacity(0.4),
          );
  }
}
