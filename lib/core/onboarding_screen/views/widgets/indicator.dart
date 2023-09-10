import 'package:flutter/widgets.dart';
import 'package:tradly_app/core/utils/colors.dart';

class DoIndicator extends StatelessWidget {
  final bool isActive;
  const DoIndicator({super.key, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(
          color: isActive ? kPrimaryColor : kPrimaryColor.withOpacity(0.5),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}
