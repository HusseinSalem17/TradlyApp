import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController textFormController;
  final String labelText;
  final bool isMultiLine;
  final Icon? suffixIcon;

  const CustomTextFormField({
    Key? key,
    required this.textFormController,
    required this.labelText,
    this.isMultiLine = false, // Default to single line
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textFormController,
      maxLines: isMultiLine ? null : 1,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        labelText: labelText,
        labelStyle: Styles.textStyleRegular14.copyWith(
          color: AssetsColors.kTextGrey,
          fontSize: 16,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AssetsColors.kTextGrey.shade300,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AssetsColors.kTextGrey.shade300,
          ),
        ),
      ),
    );
  }
}
