import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tradly_app/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      //decoration: BoxDecoration(border: Border(color: Colors.black54)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/coca_Cola.png',
          ),
          const Spacer(
            flex: 1,
          ),
          Text('Coca Cola',
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 20, color: Colors.black)),
          const Spacer(
            flex: 1,
          ),
          Row(
            children: [
              SvgPicture.asset(
                'assets/images/storeLogo.svg',
              ),
              Text('Tradly',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black45)),
                      
              Text('\$25',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: kprimaryColor)),
            ],
          ),
          const Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
