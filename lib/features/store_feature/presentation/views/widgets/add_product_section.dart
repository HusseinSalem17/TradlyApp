import 'package:flutter/material.dart';
import 'package:tradly_app/features/store_feature/presentation/views/add_product_screen.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/text_styles.dart';

class AddProductSection extends StatelessWidget {
  const AddProductSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        children: [
          SizedBox(height: size.height * 0.08),
          Text(
            'You don\'t have product',
            style: Styles.textStyleMedium18.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: size.height * 0.06),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(AddProductScreen.routeName);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 77),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    width: 1.3,
                    color: AssetsColors.kSecondaryColor,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 13,
                  ),
                  child: Text(
                    'Add Product',
                    style: Styles.textStyleMedium18.copyWith(
                      color: AssetsColors.kSecondaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
