import 'package:flutter/material.dart';
import 'package:tradly_app/widgets/custom_app_bar.dart';

import 'package:tradly_app/widgets/custom_bottom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        CustomAppBar(),
        //MenuBar(),
        Align(
            alignment: FractionalOffset.bottomCenter,
            child: customBottomAppBar()),
      ],
    ));
  }
}
