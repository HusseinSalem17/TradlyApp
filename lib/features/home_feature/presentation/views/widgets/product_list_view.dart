import 'package:flutter/material.dart';
import 'package:tradly_app/core/utils/text_styles.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/product_list_item.dart';
import '../../../../../core/models/product_model.dart';
import '../../../../../core/widgets/custom_botton.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({
    super.key,
    required this.title,
    required this.model,
    this.onTap,
  });

  final String title;
  final ProductModel model;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.34,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 27,
              bottom: 16,
              left: 20,
              right: 20,
            ),
            child: Row(
              children: [
                Text(
                  title,
                  style: Styles.textStyleMedium18.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                const CustomButton(
                  bottonTitle: 'See All',
                  height: 30,
                  width: 110,
                  fontSize: 16,
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ProductListItem(model: model);
              },
            ),
          ),
        ],
      ),
    );
  }
}
