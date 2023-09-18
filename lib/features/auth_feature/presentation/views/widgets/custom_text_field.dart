import 'package:flutter/material.dart';
import 'package:tradly_app/core/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintText, required this.controller});

  final String? hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //onChanged: onChanged,
      controller: controller,
      style: const TextStyle(color: AssetsColors.white),
      decoration: InputDecoration(
        hintText: hintText,
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
      ),
    );
  }
}
