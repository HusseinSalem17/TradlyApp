import 'package:flutter/material.dart';
import 'package:tradly_app/core/widgets/custom_app_bar_with_actions.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/add_product_section.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/edit_and_view_store_section.dart';


class CreatedStoreScreen extends StatelessWidget {
  static const routeName = '/created-store-screen';

  const CreatedStoreScreen({Key? key}) : super(key: key);

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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            EditAndViewStoreSection(),
            AddProductSection(),
          ],
        ),
      ),
    );
  }
}
