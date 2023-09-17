import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/colors.dart';
import '../utils/text_styles.dart';

class CustomAppBarWithActions extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(65);
  final String title;
  final Function() onTapFavoriteIcon;
  final Function() onTapCartIcon;

  const CustomAppBarWithActions({
    super.key,
    required this.title,
    required this.onTapFavoriteIcon,
    required this.onTapCartIcon,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AssetsColors.kSecondaryColor,
      elevation: 0,
      title: Text(
        title,
        style: Styles.textStyleMedium24.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          onPressed: onTapFavoriteIcon,
          icon: const Icon(
            FontAwesomeIcons.solidHeart,
            size: 20,
          ),
        ),
        IconButton(
          onPressed: onTapCartIcon,
          icon: const Icon(
            FontAwesomeIcons.cartShopping,
            size: 20,
          ),
        ),
      ],
    );
  }
}
