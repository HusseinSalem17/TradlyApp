import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/features/Order_history_feature/order_history_view.dart';
import 'package:tradly_app/features/Profile/profle.dart';
import 'package:tradly_app/features/home_feature/presentation/manager/home_cubit/home_cubit.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/home_body.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/custom_bottom_navigation_bar.dart';

import '../../../../core/models/product_model.dart';
import '../../../browse_feature/browse_view.dart';
import '../../../store_feature/presentation/views/store_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _pages = [
    const HomeBody(),
    const BrowseScreen(),
    const StoreScreen(),
    const OrderHistory(),
    const UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        int currentIndex = BlocProvider.of<HomeCubit>(context).currentIndex;
        return Scaffold(
          backgroundColor: AssetsColors.kPrimaryColor,
          body: _pages[currentIndex],
          bottomNavigationBar: const CustomBottomNavigationBar(),
        );
      },
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
  deliveryDetails: 'Home Delivery Available, Cash On Delivery',
);
