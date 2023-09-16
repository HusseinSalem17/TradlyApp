import 'package:flutter/material.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/core/utils/text_styles.dart';

class BrowseButton extends StatelessWidget {
  final String title;
  final Icon icon;
  final void Function()? onTap;

  const BrowseButton({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onTap,
      icon: icon,
      label: Text(title, style: Styles.textStyleRegular14),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        side: const BorderSide(
          color: Colors.white,
          width: 1,
        ),
      ),
    );
  }
}
