import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/features/home_feature/presentation/views/my_home_screen.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/menu_bar.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/product_home_container.dart';
<<<<<<< HEAD
import 'package:tradly_app/models/store_model.dart';
import 'package:tradly_app/widgets/custom_app_bar.dart';
import 'package:tradly_app/widgets/custom_botton.dart';
=======
import '../../../../core/widgets/custom_app_bar.dart';
>>>>>>> 65f00673fd7e784b9b7e91a68886d27b07f3f7ef

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        Expanded(
          child: ListView(children: [
            const Placeholder(fallbackHeight: 150),
            const CustomMenuBar(),
            HomeContainer(title: 'New Product', model: model),
            HomeContainer(title: 'Popular Product', model: model),
            const StoreMenu()
          ]),
        ),
      ],
    );
  }
}

class StoreMenu extends StatelessWidget {
  const StoreMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          color: kSecondaryColor,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  Text('Store to follow',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w500)),
                  Spacer(flex: 1),
                  CustomButton(
                    height: 30,
                    width: 120,
                    fontSize: 15,
                    fontColor: kSecondaryColor,
                    bottomTitle: 'View all',
                    color: Colors.white,
                    //onTap: onTap,
                  ),
                ],
              ),
            ),
          ),
        ),
        StoreCard()
      ],
    );
  }
}

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
