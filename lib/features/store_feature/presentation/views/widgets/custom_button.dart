import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/text_styles.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String text;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: AssetsColors.kSecondaryColor,
          minimumSize: const Size(double.infinity, 52),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(27),
          )),
      child: Text(
        text,
        style: Styles.textStyleMedium18
            .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
