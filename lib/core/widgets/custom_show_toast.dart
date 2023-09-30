import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../utils/colors.dart';

void showToast({
  required String errorMessage,
  Toast toastLength = Toast.LENGTH_SHORT,
  ToastGravity gravity = ToastGravity.BOTTOM,
  Color backgroundColor = AssetsColors.white,
  Color textColor = AssetsColors.errColor,
}) {
  Fluttertoast.showToast(
    msg: errorMessage,
    toastLength: toastLength,
    gravity: gravity,
    backgroundColor: backgroundColor,
    textColor: textColor,
  );
}
