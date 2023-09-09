import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tradly_app/constants.dart';
import 'package:tradly_app/widgets/custom_botton.dart';
import 'package:tradly_app/widgets/product_icon.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 235, 235),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 40,
                color: kprimaryColor,
              ),
              Stack(
                children: [
                  Image.asset(
                    'assets/images/Rectangle 54.png',
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
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Coca Cola',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff4F4F4F))),
                        Spacer(flex: 1),
                        Text('\$25',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: kprimaryColor)),
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
                    Text('Tradly Store',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Montserrat')),
                    const Spacer(flex: 15),
                    const CustomBottom(
                        height: 25,
                        width: 120,
                        fontSize: 14,
                        bottomTitle: 'Follow'),
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
                            child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lobortis cras placerat diam ipsum ut. Nisi vel adipiscing massa bibendum diam. Suspendisse mattis dui maecenas duis mattis. Mattis aliquam at arcu, semper nunc, venenatis et pellentesque eu. Id tristique maecenas tristique habitasse eu elementum sed. Aliquam eget lacus, arcu, adipiscing eget feugiat in dolor sagittis.Non commodo, a justo massa porttitor sed placerat in. Orci tristique etiam tempus sed. Mi varius morbi egestas dictum tempor nisl. In ',
                                style: descriptionStyle()),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomBottom(
                          bottomTitle: 'Add To Cart',
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
                          'Condition',
                          style: descriptionStyle(),
                        ),
                        Text('Price Type', style: descriptionStyle()),
                        Text('Category', style: descriptionStyle()),
                        Text('Location', style: descriptionStyle()),
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
                          'Additional Details',
                          style: TextStyle(
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
      TextStyle(color: Colors.black54, fontSize: 16);
}
