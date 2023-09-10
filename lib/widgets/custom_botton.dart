import 'package:flutter/material.dart';
import 'package:tradly_app/constants.dart';

import '../core/utils/colors.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom(
      {super.key,
      this.onTap,
      this.height = 55,
      this.fontSize = 20,
      required this.width,
      this.isLoading = false,
      required this.bottomTitle});
  final void Function()? onTap;
  final bool isLoading;
  final String bottomTitle;
  final double height;
  final double width;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width, //MediaQuery.of(context).size.width,
        height: height, //55,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(32)),
        child: Center(
            child: isLoading
                ? const CircularProgressIndicator(color: Colors.black45)
                : Text(
                    bottomTitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: fontSize,
                        fontWeight: FontWeight.w400),
                  )),
      ),
    );
  }
}
