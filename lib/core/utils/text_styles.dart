import 'package:flutter/material.dart';
import 'package:tradly_app/core/utils/colors.dart';

//     fontFamily: 'Montserrat' by default for all
const kMontserrat = 'Montserrat';

abstract class Styles {
  static const errorTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.red,
  );
  static const textStyleMedium14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    fontFamily: kMontserrat,
    color: AssetsColors.kPrimaryTextColor,
  );
  static const textStyleBold10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w700,
    fontFamily: kMontserrat,
    color: AssetsColors.white,
  );
  static const textStyleRegular14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: kMontserrat,
    color: AssetsColors.white,
  );
  static const textStyleMedium16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: kMontserrat,
    color: AssetsColors.white,
  );
  static const textStyleMedium18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    fontFamily: kMontserrat,
    color: AssetsColors.black,
  );
  static const textStyleMedium20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    fontFamily: kMontserrat,
    color: AssetsColors.white,
  );
  static const textStyleMedium24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    fontFamily: kMontserrat,
    color: AssetsColors.white,
  );
  static const textStyleRegular26 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w400,
    fontFamily: kMontserrat,
    color: AssetsColors.white,
  );
  static const textStyleRegular24 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w400,
    fontFamily: kMontserrat,
  );

  static const textStyleMedium30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w500,
    fontFamily: kMontserrat,
    color: AssetsColors.white,
  );
  static const textStyleBold26 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w800,
    fontFamily: kMontserrat,
    color: AssetsColors.kPrimaryTextColor,
  );
}
