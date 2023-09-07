import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tradly_app/constants.dart';
import 'package:tradly_app/widgets/product_icon.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 240, 235, 235),
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
                ),
                const Row(
                  children: [
                    ProductIcon(icon: Icons.arrow_back),
                    Spacer(flex: 1),
                    ProductIcon(icon: Icons.share),
                    ProductIcon(icon: FontAwesomeIcons.heart),
                    ProductIcon(icon: Icons.menu)
                  ],
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
            // Container(
            //     Text(''),
            //     ),
          ],
        ));
  }
}
