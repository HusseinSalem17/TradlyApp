import 'package:flutter/material.dart';


import '../../../../../helper/data_helper/menu_bar_data.dart';
import 'category_icon.dart';


class CustomMenuBar extends StatelessWidget {
  const CustomMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        children: List.generate(
          8,
          (index) => CategoryIcon(
            model: categoryModel[index],
          ),
        ),
      ),
    );
  }
}