import 'package:flutter/material.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/product_cart.dart';

import '../../../../../core/models/product_model.dart';
import 'home_body.dart';

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
ProductModel model = ProductModel(
    image: 'assets/images/coca_Cola.png',
    name: 'Coca Cola',
    price: '25',
    store: 'Tradly',
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lobortis cras placerat diam ipsum ut. Nisi vel adipiscing massa bibendum diam. Suspendisse mattis dui maecenas duis mattis. Mattis aliquam at arcu, semper nunc, venenatis et pellentesque eu. Id tristique maecenas tristique habitasse eu elementum sed. Aliquam eget lacus, arcu, adipiscing eget feugiat in dolor sagittis.Non commodo, a justo massa porttitor sed placerat in. Orci tristique etiam tempus sed. Mi varius morbi egestas dictum tempor nisl. In ',
    condition: 'Organic',
    priceType: 'Fixed',
    category: 'Beverages',
    location: 'Kualalumpur, Malaysia',
    deliveryDetails: 'Home Delivery Available, Cash On Delivery');