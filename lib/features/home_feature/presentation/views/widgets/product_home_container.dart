import 'package:flutter/material.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/product_cart.dart';
import 'package:tradly_app/models/product_model.dart';
import 'package:tradly_app/widgets/custom_botton.dart';


class HomeContainer extends StatelessWidget {
  HomeContainer({
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: SizedBox(
          height: 450,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Text(title,
                        style: const TextStyle(
                            color: Color(0xff4F4F4F),
                            fontSize: 28,
                            fontWeight: FontWeight.w700)),
                    const Spacer(flex: 1),
                    CustomButton(
                      height: 30,
                      width: 120,
                      fontSize: 15,
                      bottomTitle: 'See All',
                      onTap: onTap,
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return ProductCard(model: model);
                  })
            ],
          )),
    );
  }
}
