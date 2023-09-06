import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  CategoryIcon({super.key, required this.name, required this.backgroundURL});
  final String name;
  final String backgroundURL;
  @override
  Widget build(BuildContext context) {
    return Stack(
      
      alignment: FractionalOffset.center,
      children: [
      Image.asset(
        backgroundURL,
      ),
      Text(name,style: TextStyle(color: Colors.white,)),
      
    ]);
  }
}
