import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/features/Order_history_feature/order_history_view.dart';
import 'package:tradly_app/features/Profile/profle.dart';
import 'package:tradly_app/features/browse_feature/browse_view.dart';
import 'package:tradly_app/features/home_feature/presentation/views/home_view.dart';

import '../../../../core/models/product_model.dart';
import '../../../store_feature/presentation/views/store_screen.dart';

class MyHomePage extends StatefulWidget {
  static const routeName = '/home-screen';

  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomeView(),
    const BrowseView(),
    const StoreScreen(),
    const OrderHistory(),
    const UserProfile(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AssetsColors.kPrimaryColor,
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.house,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
            ),
            label: 'Browse',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.store,
            ),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.listCheck,
            ),
            label: 'Order History',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_3_sharp,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex, // Highlight the current item
        onTap: _onItemTapped, // Handle the selection
        fixedColor: AssetsColors.kSecondaryColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
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
