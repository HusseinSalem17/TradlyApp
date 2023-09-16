import 'package:flutter/material.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/menu_bar.dart';
import 'package:tradly_app/core/widgets/custom_app_bar.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/product_home_container.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/store_cards.dart';
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
                CustomAppBar(),
                CustomCarouseSlider(),
                CustomMenuBar(),
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: HomeContainer(
            title: 'New Product',
            model: model,
          )),
          SliverToBoxAdapter(
              child: HomeContainer(
            title: 'Popular Products',
            model: model,
          )),
          const SliverToBoxAdapter(
            child: StoreMenu(),
          ),
        ],
      ),
    );
  }
}
