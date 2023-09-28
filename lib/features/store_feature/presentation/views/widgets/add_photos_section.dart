import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/text_styles.dart';
import 'custom_add_photo_button.dart';
import 'custom_add_product_photo_card.dart';

class AddPhotosSection extends StatelessWidget {
  const AddPhotosSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 21,
        vertical: 31,
      ),
      child: Center(
        child: Column(
          children: [
            const Row(
              children: [
                CustomAddPhotosButton(),
                SizedBox(width: 15),
                CustomAddProductPhotoCard()
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  'Max. 4 photos per product',
                  style: Styles.textStyleNormal14.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AssetsColors.kTextGrey,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
