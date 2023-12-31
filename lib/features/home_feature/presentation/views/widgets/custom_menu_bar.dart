import 'package:flutter/material.dart';

import '../../../../../core/data_helper/menu_bar_data.dart';
import 'category_items.dart';

class CustomMenuBar extends StatelessWidget {
  const CustomMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        crossAxisSpacing: 1.2,
        mainAxisSpacing: 1,
        children: List.generate(
          8,
          (index) => CategoryItems(
            model: categoryModel[index],
          ),
        ),
      ),
    );
  }
}
