import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tradly_app/constants.dart';

import '../core/utils/colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField(
      {super.key,
      this.onchange,
      required this.hint,
      this.maxLines = 1,
      this.onSaved,
      this.contentIcon = false});
  final String hint;
  final int maxLines;
  final bool contentIcon;
  final void Function(String?)? onSaved;
  final void Function(String?)? onchange;

  @override
  Widget build(BuildContext context) {
    return TextField(
      // onSaved: onSaved,
      // onChanged: onchange,
      // validator: (value) {
      //   if (value?.isEmpty ?? true) {
      //     return 'field is required';
      //   } else
      //     return null;
      // },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
          color: Color(0xff13B58C),
        ),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.black38),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(32),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
