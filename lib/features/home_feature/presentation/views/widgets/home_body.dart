import 'package:flutter/material.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/core/utils/text_styles.dart';
import 'package:tradly_app/core/widgets/custom_botton.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/menu_bar.dart';
import 'package:tradly_app/core/widgets/custom_app_bar.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/product_list_view.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/store_cards.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const CustomAppBar(),
                const CustomCarouseSlider(),
                const CustomMenuBar(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'New Product ',
                        style: Styles.textStyleMedium18.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AssetsColors.kPrimaryTextColor,
                        ),
                      ),
                      const CustomButton(
                        width: 90,
                        bottomTitle: 'See All',
                        height: 26,
                        fontSize: 12,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SliverToBoxAdapter(
            child: ProductsListView(
              title: '',
            ),
          ),
          const SliverToBoxAdapter(
              //                5
              child: ProductsListView(
            title: 'Popular Product',
          )),
          const SliverToBoxAdapter(
            //                6
            child: StoreMenu(),
          ),
        ],
      ),
    );
  }
}
