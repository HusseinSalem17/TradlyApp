import 'package:flutter/material.dart';
import 'package:tradly_app/core/widgets/custom_app_bar.dart';
import 'package:tradly_app/features/home_feature/presentation/views/home_screen.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/product_list_item.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});
  static const routeName = 'wish-list-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: 'Wishlist',
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return ProductListItem(model: model);
              }),
        ));
  }
}
