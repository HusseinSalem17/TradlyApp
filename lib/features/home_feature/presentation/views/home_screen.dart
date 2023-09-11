import 'package:flutter/material.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/menu_bar.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/navigation_bar.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/product_home_container.dart';
import 'package:tradly_app/models/product_model.dart';
import 'package:tradly_app/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
      children: [
        const CustomAppBar(),
        Expanded(
          child: ListView(children: [
            Container(height: 150),
            const CustomMenuBar(),
            HomeContainer(title: 'New Products',model:model),
          ]),
        ),
        const Align(
            alignment: FractionalOffset.bottomCenter,
            child: CustomNavigationBar()),
      ],
    ));
  }
}

ProductModel model = ProductModel(
    image: 'assets/images/coca_Cola.png',
    name: 'Coca Cola',
    price: '25',
    store: 'Tradly',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lobortis cras placerat diam ipsum ut. Nisi vel adipiscing massa bibendum diam. Suspendisse mattis dui maecenas duis mattis. Mattis aliquam at arcu, semper nunc, venenatis et pellentesque eu. Id tristique maecenas tristique habitasse eu elementum sed. Aliquam eget lacus, arcu, adipiscing eget feugiat in dolor sagittis.Non commodo, a justo massa porttitor sed placerat in. Orci tristique etiam tempus sed. Mi varius morbi egestas dictum tempor nisl. In ',
    condition: 'Organic',
    priceType: 'Fixed',
    category: 'Beverages',
    location: 'Kualalumpur, Malaysia',
    deliveryDetails: 'Home Delivery Available, Cash On Delivery');
