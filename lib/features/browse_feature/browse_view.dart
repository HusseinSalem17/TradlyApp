import 'package:flutter/material.dart';

import 'package:tradly_app/features/browse_feature/widgets/browse_bar.dart';
import 'package:tradly_app/core/widgets/custom_app_bar_with_actions.dart';

class BrowseScreen extends StatelessWidget {
  static const routeName = '/store-screen';

  const BrowseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithActions(
        title: 'Browse',
        onTapCartIcon: () {
          print('onTapCartIcon');
        },
        onTapFavoriteIcon: () {
          print('onTapFavoriteIcon');
        },
      ),
      body: const BrowseBar(),
    );
  }
}
