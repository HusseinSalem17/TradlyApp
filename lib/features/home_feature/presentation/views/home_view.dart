import 'package:flutter/material.dart';
import 'package:tradly_app/features/home_feature/presentation/views/my_home_screen.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/menu_bar.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/product_home_container.dart';
import 'package:tradly_app/widgets/custom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        Expanded(
          child: ListView(children: [
            Container(height: 150),
            const CustomMenuBar(),
            HomeContainer(title: 'New Products', model: model),
          ]),
        ),
      ],
    );
  }
}