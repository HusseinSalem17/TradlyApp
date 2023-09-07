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
        body: Column(
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
                  const Text('Tradly Store'),
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
          ],
        ));
  }
}
