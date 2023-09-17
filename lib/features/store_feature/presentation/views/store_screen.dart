import 'package:flutter/material.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/store_screen_body.dart';
import 'package:tradly_app/core/widgets/custom_app_bar_with_actions.dart';

class StoreScreen extends StatelessWidget {
  static const routeName = '/store-screen';

  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithActions(
        title: 'My Store',
        onTapCartIcon: () {
          print('onTapCartIcon');
        },
        onTapFavoriteIcon: () {
          print('onTapFavoriteIcon');
        },
      ),
      body: const StoreScreenBody(),
    );
  }
}
