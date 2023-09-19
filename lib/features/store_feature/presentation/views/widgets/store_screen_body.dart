import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tradly_app/core/utils/image_assets.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/custom_button.dart';

import '../../../../../core/utils/text_styles.dart';
import '../create_store_screen.dart';

class StoreScreenBody extends StatelessWidget {
  const StoreScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          SvgPicture.asset(
            AssetsImages.storeScreenLogo,
            fit: BoxFit.cover,
          ),
          const Spacer(),
          Text(
            'You Don\'t Have a Store ',
            style: Styles.textStyleMedium18.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ),
          const Spacer(),
          CustomButton(
            onPressed: () {
              Navigator.pushNamed(context, CreateStoreScreen.routeName);
            },
            text: 'Create Store',
          ),
          const Spacer(flex: 5),
        ],
      ),
    );
  }
}
