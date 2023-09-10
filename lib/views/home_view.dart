import 'package:flutter/material.dart';
import 'package:tradly_app/widgets/custom_app_bar.dart';
import 'package:tradly_app/widgets/custom_bottom_app_bar.dart';
import 'package:tradly_app/widgets/menu_bar.dart';
import 'package:tradly_app/widgets/product_home_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF6F9FF),
        body: Column(
          children: [
            const CustomAppBar(),
            Expanded(
              child: ListView(children: [
                Container(height: 150),
                const CustomMenuBar(),
                HomeContainer(),
              ]),
            ),
            const Align(
                alignment: FractionalOffset.bottomCenter,
                child: customBottomAppBar()),
          ],
        ));
  }
}


