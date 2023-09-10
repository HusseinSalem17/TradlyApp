import 'package:flutter/material.dart';
import 'package:tradly_app/models/category_model.dart';

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({super.key, required this.model});

  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Image.asset(
          model.imageURL,
          fit: BoxFit.cover,
        ),
        Center(
          child: Text(model.category,
              style: const TextStyle(
                color: Colors.white,
              )),
        ),
      ],
    );
  }
}
