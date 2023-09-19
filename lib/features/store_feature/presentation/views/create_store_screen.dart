import 'package:flutter/material.dart';

import 'package:tradly_app/features/store_feature/presentation/views/widgets/create_store_details_section.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/create_store_logo_section.dart';
import 'package:tradly_app/core/widgets/custom_app_bar_with_actions.dart';

import '../../../../core/widgets/custom_app_bar.dart';

class CreateStoreScreen extends StatelessWidget {
  static const routeName = 'create-store-screen';

  const CreateStoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'My Store',
      ),
      body: Stack(
        children: [
          LogoSection(),
          CreateStoreDetailsSection(),
        ],
      ),
    );
  }
}
