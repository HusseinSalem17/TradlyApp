import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/core/utils/text_styles.dart';

import '../../../../../core/utils/image_assets.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({
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
          Text(
            'This information is used to set up\n your shop',
            style: Styles.textStyleMedium16.copyWith(
              fontSize: 14,
              color: AssetsColors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 17),
        ],
      ),
    );
  }
}
