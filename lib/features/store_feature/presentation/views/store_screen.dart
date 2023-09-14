import 'package:flutter/material.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/body_of_store_screen.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/custom_app_bar.dart';

class StoreScreen extends StatelessWidget {
  static const routeName = '/store-screen';

  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'My Store',
        centerTitle: false,
        actionIcons: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_rounded),
          ),
        ],
      ),
      body: const BodyOfStoreScreen(),
    );
  }
}
