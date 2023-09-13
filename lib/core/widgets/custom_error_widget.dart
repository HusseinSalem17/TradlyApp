import 'package:flutter/material.dart';

import '../utils/text_styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});

  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: Styles.textStyleMedium18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
