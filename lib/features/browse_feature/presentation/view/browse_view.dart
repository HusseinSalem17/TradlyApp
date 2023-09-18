import 'package:flutter/material.dart';
import 'package:tradly_app/features/browse_feature/presentation/view/widgets/browse_bar.dart';

import 'package:tradly_app/features/home_feature/presentation/views/home_screen.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/product_list_item.dart';

import '../../../../core/widgets/custom_app_bar.dart';

class BrowseScreen extends StatelessWidget {
  static const routeName = '/store-screen';

  const BrowseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Browse',
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
