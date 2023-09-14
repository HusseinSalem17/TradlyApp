import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tradly_app/core/utils/colors.dart';
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
          LogoContent(),
          CreateContent(),
        ],
      ),
    );
  }
}

class CreateContent extends StatelessWidget {
  const CreateContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Container(
          color: AssetsColors.white,
          child: const SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}

class LogoContent extends StatelessWidget {
  const LogoContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 23),
          SvgPicture.asset(
            AssetsImages.storeScreenLogo,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 25.11),
          const Text(
            'This information is used to set up your shop',
          ),
          const SizedBox(height: 17),
        ],
      ),
    );
  }
}
