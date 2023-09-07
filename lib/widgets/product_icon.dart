import 'package:flutter/material.dart';

class ProductIcon extends StatelessWidget {
  const ProductIcon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      
      child: IconButton(onPressed: onPressed, icon: Icon(icon, size: 30,color: Colors.white)),
      decoration: BoxDecoration(
          
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(32)),
    );
  }
}