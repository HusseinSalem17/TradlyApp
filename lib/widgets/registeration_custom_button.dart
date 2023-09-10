import 'package:flutter/material.dart';
import 'package:tradly_app/constants.dart';

import '../core/utils/colors.dart';

class RegiserationButton extends StatelessWidget {
  const RegiserationButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330,
      
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            vertical: 15,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
