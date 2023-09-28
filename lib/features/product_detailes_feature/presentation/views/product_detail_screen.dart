import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tradly_app/core/models/product_model.dart';
import 'package:tradly_app/core/utils/text_styles.dart';
import 'package:tradly_app/core/widgets/custom_botton.dart';

import '../../../../core/utils/colors.dart';
import 'widgets/product_icon.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const routeName = '/product-details-screen';

  const ProductDetailsScreen({super.key, required this.model});

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 40,
            color: AssetsColors.kSecondaryColor,
          ),
          Stack(
            children: [
              Image.asset(
                model.image,
                width: double.infinity,
                scale: 0.7,
              ),
              const Row(
                children: [
                  ProductIcon(icon: Icons.arrow_back),
                  Spacer(flex: 16),
                  ProductIcon(icon: Icons.share),
                  Spacer(flex: 1),
                  ProductIcon(icon: FontAwesomeIcons.heart),
                  Spacer(flex: 1),
                  ProductIcon(icon: Icons.menu),
                ],
              ),
            ],
          ),
          Container(
              height: 100,
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(model.name,
                        style: Styles.textStyleMedium20.copyWith(
                            color: Colors.black, fontWeight: FontWeight.w600)),
                    const Spacer(flex: 1),
                    Text(model.price,
                        style: Styles.textStyleMedium24
                            .copyWith(color: AssetsColors.kSecondaryColor)),
                  ],
                ),
              )),
          const SizedBox(height: 5),
          Container(
            height: 80,
            color: Colors.white,
            child: Row(
              children: [
                const Spacer(flex: 1),
                SvgPicture.asset(
                  'assets/images/storeLogo.svg',
                ),
                const Spacer(flex: 1),
                Text(model.store,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Montserrat')),
                const Spacer(flex: 15),
                const CustomButton(
                    height: 25,
                    width: 120,
                    fontSize: 14,
                    bottonTitle: 'Follow'),
                const Spacer(flex: 1),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Container(
              color: Colors.white,
              height: 500,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Text(model.description,
                            style: Styles.textStyleMedium16
                                .copyWith(color: Colors.grey)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      bottonTitle: 'Add To Cart',
                      width: MediaQuery.of(context).size.width,
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 40,
                      thickness: 5,
                      indent: 80,
                      endIndent: 80,
                    ),
                    TextRow(title: 'Condition', type: model.condition),
                    TextRow(title: 'Price Type', type: model.priceType),
                    TextRow(title: 'Category', type: model.category),
                    TextRow(title: 'Location', type: model.location),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              )),
          const SizedBox(height: 5),
          Container(
              height: 120,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Additional Details',
                      style: Styles.textStyleMedium20
                          .copyWith(color: Colors.black),
                    ),
                    TextRow(
                        title: 'Delivery Details', type: model.deliveryDetails),
                  ],
                ),
              ))
        ],
      ),
    ));
  }
}

class TextRow extends StatelessWidget {
  const TextRow({
    super.key,
    required this.title,
    required this.type,
  });

  final String title, type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Text(
            '$title' '\t\t\t\t',
            style: Styles.textStyleMedium18.copyWith(color: Colors.grey),
          ),
          Text(
            type,
            style: Styles.textStyleMedium18.copyWith(color: Colors.black),
          )
        ],
      ),
    );
  }
}
