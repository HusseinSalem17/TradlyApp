import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tradly_app/core/widgets/search_text_field.dart';

import '../../../../../core/utils/colors.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      color: AssetsColors.kSecondaryColor,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              children: [
                Text('Groceries',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        fontFamily: 'Montserrat')),
                Spacer(flex: 8),
                Icon(
                  FontAwesomeIcons.solidHeart,
                  color: Colors.white,
                  size: 20,
                ),
                Spacer(flex: 1),
                Icon(
                  FontAwesomeIcons.cartShopping,
                  color: Colors.white,
                  size: 20,
                ),
              ],
            ),
            SizedBox(height: 30),
            SearchTextField(
              hint: 'Search product',
            ),
          ],
        ),
      ),
    );
  }
}
