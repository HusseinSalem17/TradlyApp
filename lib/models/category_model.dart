import 'package:flutter/material.dart';

class CategoryModel {
  String imageURL;
  String category;
  VoidCallback? onTaped;
  CategoryModel({required this.imageURL, required this.category, this.onTaped});
}
