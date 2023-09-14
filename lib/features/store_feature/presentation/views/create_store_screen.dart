import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/create_store_details_section.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/create_store_logo_section.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/custom_app_bar.dart';

import '../../../../core/utils/image_assets.dart';

class CreateStoreScreen extends StatelessWidget {
  static const routeName = 'create-store-screen';

  const CreateStoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        centerTitle: true,
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
