import 'package:flutter/material.dart';

import 'package:tradly_app/features/browse_feature/widgets/browse_bar.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/custom_app_bar.dart';

class BrowseScreen extends StatelessWidget {
  static const routeName = '/store-screen';

  const BrowseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Browse',
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
      body: const BrowseBar(),
    );
  }
}



