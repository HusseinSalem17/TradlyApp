import 'package:flutter/material.dart';
import 'package:tradly_app/widgets/category_icon.dart';
import 'package:tradly_app/widgets/custom_app_bar.dart';
import 'package:tradly_app/widgets/custom_bottom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        CustomAppBar(),
        Positioned(
            top: 300,
            child: CategoryIcon(
                name: 'Beverages',
                backgroundURL: 'assets/images/menu/berverages.png')),
        Positioned(
            child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: customBottomAppBar())),
      ],
    ));
  }
}

class MenuBar extends StatelessWidget {
  const MenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CategoryIcon(
      name: 'Beverages',
      backgroundURL: 'assets/images/menuImages/beverages.svg',
    );
  }
}
