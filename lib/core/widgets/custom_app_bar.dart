import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(65);
  final String title;

  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: AssetsColors.kSecondaryColor,
      elevation: 0,
      title: Text(
        title,
        style: Styles.textStyleMedium24.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
