import 'package:flutter/material.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/core/widgets/custom_app_bar.dart';
import 'package:tradly_app/core/widgets/custom_app_bar_with_actions.dart';
import 'package:tradly_app/features/browse_feature/presentation/view/widgets/browse_bar.dart';

import 'package:tradly_app/features/home_feature/presentation/views/home_screen.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/product_list_item.dart';
//import 'package:tradly_app/features/store_feature/presentation/views/widgets/custom_app_bar.dart';

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
      body: Column(
        children: [
          const BrowseBar(),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
                itemCount: 20,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return ProductListItem(model: model);
                }),
          )
        ],
      ),
    );
  }
}
