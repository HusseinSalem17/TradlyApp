import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(65);
  final String? title;
  final List<Widget>? actionIcons;
  final bool? centerTitle;

  const CustomAppBar({
    super.key,
  
    this.title,
    this.actionIcons,
    this.centerTitle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle ?? false,
      backgroundColor: AssetsColors.kSecondaryColor,
      elevation: 0,
      title: Text(
        title ?? '',
        style: Styles.textStyleMedium24.copyWith(fontWeight: FontWeight.bold),
      ),
      actions: actionIcons ?? [],
    );
  }
}
