import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tradly_app/core/models/store_model.dart';
import 'package:tradly_app/core/widgets/custom_botton.dart';

class StoreCard extends StatelessWidget {
  const StoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.white,
      child: Stack(
        children: [
          Column(children: [
            Image.asset(smodel.image),
            const SizedBox(
              height: 40,
            ),
            Text(smodel.name),
            const SizedBox(
              height: 10,
            ),
            const CustomButton(
              height: 30,
              width: 110,
              fontSize: 15,
              bottomTitle: 'Follow',
              //onTap: onTap,
            ),
            const SizedBox(
              height: 10,
            ),
          ]),
          Positioned(
              top: 50,
              left: 50,
              child: SvgPicture.asset('assets/images/store_logo.svg')),
        ],
      ),
    );
  }
}

StoreModel smodel = StoreModel(
    name: 'Tradly Store',
    image: 'assets/images/storeImage.png',
    webAddress: 'tradly.app',
    description: 'Sell Groceries and homecare produ t',
    type: 'Groceries Store',
    address: '125 Crescent Ave, Woodbury',
    city: 'New York',
    state: '125 Crescent Ave, Woodbury',
    country: 'USA',
    courierName: 'Blue Dart');