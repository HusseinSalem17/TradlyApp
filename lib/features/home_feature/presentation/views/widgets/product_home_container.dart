import 'package:flutter/material.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/product_cart.dart';
<<<<<<< HEAD
import 'package:tradly_app/models/product_model.dart';
import 'package:tradly_app/widgets/custom_botton.dart';
=======
import 'package:tradly_app/core/models/product_model.dart';
import 'package:tradly_app/core/widgets/custom_botton.dart';
>>>>>>> 65f00673fd7e784b9b7e91a68886d27b07f3f7ef

class HomeContainer extends StatelessWidget {
  const HomeContainer({
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
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(title,
                    style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 26,
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
          ProductCard(model: model)
          // ListView.builder(
          //     itemCount: 1,
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: (BuildContext context, int index) {
          //       return ProductCard(model: model);
          //     })
        ],
      ),
    );
  }
}
