// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tradly_app/models/category_model.dart';

const publishable_key =
    'pk_live_48cfe836339c2c7165b9e72766e0cfa7b8ee6aed815ecfc101809a5f527aad67';
const secret_key =
    'sk_live_8c33adc2ac7c632cba9f6fef55784d06f320e85d72aa99b67ec7f148814488fb';
const Color kprimaryColor = Color(0xff33907C);
final List<CategoryModel> categoryModel = [
  CategoryModel(
    imageURL: 'assets/images/menu/berverages.png',
    category: 'Beverage',
  ),
  CategoryModel(
    imageURL: 'assets/images/menu/bread.png',
    category: 'Bread & Bakery',
  ),
  CategoryModel(
    imageURL: 'assets/images/menu/Vegetables.png',
    category: 'Vegetables',
  ),
  CategoryModel(
    imageURL: 'assets/images/menu/fruit.png',
    category: 'Fruit',
  ),
  CategoryModel(
    imageURL: 'assets/images/menu/egg.png',
    category: 'Egg',
  ),
  CategoryModel(
    imageURL: 'assets/images/menu/frozenVeg.png',
    category: 'Frozen veg',
  ),
  CategoryModel(
    imageURL: 'assets/images/menu/homeCare.png',
    category: 'Homecare',
  ),
  CategoryModel(
    imageURL: 'assets/images/menu/petCare.png',
    category: 'petCare',
  ),
];
