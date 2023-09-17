import 'package:flutter/material.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/custom_menu_bar.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/product_list_view.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/store_list_view.dart';
import 'package:tradly_app/features/onboarding_screen/data/models/product_data.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Column(
              children: [
                CustomHomeAppBar(),
                CustomCarouseSlider(),
                CustomMenuBar(),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: ProductListView(
              title: 'New Product',
              model: model,
            ),
          ),
          SliverToBoxAdapter(
            child: ProductListView(
              title: 'Popular Products',
              model: model,
            ),
          ),
          const SliverToBoxAdapter(
            child: StoreListView(),
          ),
        ],
      ),
    );
  }
}
