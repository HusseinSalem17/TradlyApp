import 'package:flutter/material.dart';
import 'package:tradly_app/core/utils/text_styles.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/product_cart.dart';
import '../../../../../core/models/product_model.dart';
import '../../../../../core/widgets/custom_botton.dart';

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
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Text(
                    title,
                    style: Styles.textStyleBold26,
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
                  return ProductCard(model: model);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
