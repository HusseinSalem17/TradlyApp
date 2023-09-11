import 'package:flutter/material.dart';

import '../core/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    this.height = 55,
    this.fontSize = 20,
    required this.width,
    this.isLoading = false,
    required this.bottomTitle,
    this.color = kSecondaryColor,
    this.fontColor = Colors.white,
  });

  final void Function()? onTap;
  final bool isLoading;
  final String bottomTitle;
  final double height;
  final double width;
  final double fontSize;
  final Color color;
  final Color fontColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width, //MediaQuery.of(context).size.width,
        height: height, //55,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(32)),
        child: Center(
            child: isLoading
                ? const CircularProgressIndicator(color: Colors.black45)
                : Text(
                    bottomTitle,
                    style: TextStyle(
                        color: fontColor,
                        fontSize: fontSize,
                        fontWeight: FontWeight.w400),
                  )),
      ),
    );
  }
}
