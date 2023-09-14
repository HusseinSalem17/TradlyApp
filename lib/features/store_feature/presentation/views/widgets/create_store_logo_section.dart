import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          const Text(
            'This information is used to set up your shop',
          ),
          const SizedBox(height: 17),
        ],
      ),
    );
  }
}
