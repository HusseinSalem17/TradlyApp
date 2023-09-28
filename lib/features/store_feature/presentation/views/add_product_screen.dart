import 'package:flutter/material.dart';
import 'package:tradly_app/core/widgets/custom_app_bar.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/add_photos_section.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/add_product_details_section.dart';


class AddProductScreen extends StatelessWidget {
  static const routeName = '/add-product-screen';

  const AddProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Add Product'),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                AddPhotosSection(),
                AddProductDetailsSection(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
