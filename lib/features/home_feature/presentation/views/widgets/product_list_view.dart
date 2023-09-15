import 'package:flutter/material.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/product_cart.dart';

import '../home_body.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.3,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return ProductCard(model: model);
        },
      ),
    );
  }
}
