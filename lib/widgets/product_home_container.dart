import 'package:flutter/material.dart';
import 'package:tradly_app/widgets/custom_botton.dart';
import 'package:tradly_app/widgets/product_cart.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 450,
        child: const Column(
          children: [
            Row(
              children: [
                Text('New Product',
                    style: TextStyle(
                        color: Color(0xff4F4F4F),
                        fontSize: 28,
                        fontWeight: FontWeight.w700)),
                Spacer(flex: 1),
                CustomBottom(
                    height: 25,
                    width: 120,
                    fontSize: 14,
                    bottomTitle: 'See All'),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                ],
              ),
            )
          ],
        ));
  }
}