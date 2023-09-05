import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  
  CustomIcon(
      {this.onTap,
      required this.icon,
      required this.color,
      required this.title});
  final IconData icon;
  final Color color;
  final String title;

  final void Function(String?)? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Icon(
            icon,
            color: color,
          ),
          Text(title,style: TextStyle(color: color),),
        ],
      ),
    );
  }
}
