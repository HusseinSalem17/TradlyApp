import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController textFormController;
  final String labelText;

  const CustomTextFormField({
    super.key,
    required this.textFormController,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textFormController,
      decoration: InputDecoration(
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
