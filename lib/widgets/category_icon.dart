import 'package:flutter/material.dart';
import 'package:tradly_app/models/category_model.dart';

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({super.key, required this.model});
  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Expanded(
        flex: 2,
        child: Stack(
          
          alignment: FractionalOffset.center, children: [
          Image.asset(
            model.imageURL,
          ),
          Text(model.category,
              style: const TextStyle(
                color: Colors.white,
              )),
        ]),
      ),
    );
  }
}
