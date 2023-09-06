import 'package:flutter/material.dart';
import 'package:tradly_app/constants.dart';
import 'package:tradly_app/widgets/category_icon.dart';
import 'package:tradly_app/widgets/custom_app_bar.dart';
import 'package:tradly_app/widgets/custom_bottom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(
      children: [
        MenuBar(),
        CustomAppBar(),
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
    return GridView.builder(
        itemCount: categoryModel.length,
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 1,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
        ),
        itemBuilder: (context, index) {
          return CategoryIcon(model: categoryModel[index]);
        });
  }
}
