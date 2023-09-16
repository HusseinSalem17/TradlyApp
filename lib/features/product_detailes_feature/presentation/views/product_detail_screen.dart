import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tradly_app/core/models/product_model.dart';
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
        backgroundColor: const Color.fromARGB(255, 240, 235, 235),
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
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
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
                  ),
                ],
              ),
              Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(model.name,
                            style: const TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff4F4F4F))),
                        const Spacer(flex: 1),
                        Text(model.price,
                            style: const TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: AssetsColors.kSecondaryColor)),
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
                  height: 450,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Text(model.description,
                                style: descriptionStyle()),
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
                        Text(
                          'Condition     ' '${model.condition}',
                          style: descriptionStyle(),
                        ),
                        Text('Price Type     ' '${model.priceType}',
                            style: descriptionStyle()),
                        Text('Category     ' '${model.category}',
                            style: descriptionStyle()),
                        Text('Location     ' '${model.location}',
                            style: descriptionStyle()),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  )),
              const SizedBox(height: 5),
              Container(
                  height: 100,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Additional Details     ' '${model.deliveryDetails}',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Delivery Details', style: descriptionStyle()),
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }

  TextStyle descriptionStyle() =>
      const TextStyle(color: Colors.black54, fontSize: 16);
}
