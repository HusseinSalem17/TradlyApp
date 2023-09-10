import 'package:flutter/material.dart';
import 'package:tradly_app/constants.dart';
import 'package:tradly_app/widgets/category_icon.dart';

class CustomMenuBar extends StatelessWidget {
  const CustomMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CategoryIcon(model: categoryModel[0]),
            CategoryIcon(model: categoryModel[1]),
            CategoryIcon(model: categoryModel[2]),
            CategoryIcon(model: categoryModel[3]),
          ],
        ),
        Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CategoryIcon(model: categoryModel[4]),
            CategoryIcon(model: categoryModel[5]),
            CategoryIcon(model: categoryModel[6]),
            CategoryIcon(model: categoryModel[7]),
          ],
        ),
      ],
    );
  }
}