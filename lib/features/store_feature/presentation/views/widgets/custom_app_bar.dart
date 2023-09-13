import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/text_styles.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(65);

  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AssetsColors.kSecondaryColor,
      elevation: 0,
      title: Text(
        'My Store',
        style: Styles.textStyleMedium24.copyWith(fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_rounded),
        ),
      ],
    );
  }
}