import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/text_styles.dart';

class StoreCustomButton extends StatelessWidget {
  final String buttonTitle;
  final Color textColor;
  final Color backgroundColor;

  const StoreCustomButton({
    super.key,
    required this.buttonTitle,
    required this.textColor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: backgroundColor,
          border: Border.all(
            width: 1.3,
            color: AssetsColors.kSecondaryColor,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 4,
          ),
          child: Text(
            buttonTitle,
            style: Styles.textStyleMedium18.copyWith(
              color: textColor,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
