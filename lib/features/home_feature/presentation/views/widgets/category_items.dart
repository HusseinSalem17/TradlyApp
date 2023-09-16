import 'package:flutter/material.dart';
import 'package:tradly_app/core/models/category_model.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems({super.key, required this.model});

  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          model.imageURL,
          fit: BoxFit.contain,
        ),
        Center(
          child: Text(
            model.category,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
