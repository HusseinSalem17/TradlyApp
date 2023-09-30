import 'package:flutter/material.dart';
import 'package:tradly_app/core/utils/colors.dart';

import '../../../../../core/utils/functions/validators.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    this.hintText,
    required this.controller,
    this.keyboardType,
    this.onChanged,
    this.confirmPasswordController,
    this.errorText,
  }) : super(key: key);

  final void Function(String)? onChanged;
  final String? hintText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final TextEditingController? confirmPasswordController;
  final String? errorText;

  @override
  CustomTextFieldState createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorColor: AssetsColors.white,
      style: const TextStyle(color: AssetsColors.white),
      keyboardType: widget.keyboardType,
      obscureText:
          widget.keyboardType == TextInputType.visiblePassword && _obscureText,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        hintText: widget.hintText,
        hintStyle: TextStyle(color: AssetsColors.white.withOpacity(0.7)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: AssetsColors.white,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: AssetsColors.white,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: AssetsColors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: AssetsColors.white,
          ),
        ),
        suffixIcon: widget.keyboardType == TextInputType.visiblePassword
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: AssetsColors.white,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
        errorText: widget.errorText,
        errorMaxLines: 2,
      ),
      onChanged: widget.onChanged,
      validator: (value) {
        if (widget.keyboardType == TextInputType.emailAddress) {
          return validateEmail(value);
        }
        // else  if (widget.keyboardType == TextInputType.visiblePassword) {
        //   return validatePassword(value);
        // }
        else {
          return null;
        }
      },
    );
  }
}
