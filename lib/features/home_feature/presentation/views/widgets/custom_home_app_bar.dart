import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tradly_app/core/widgets/search_text_field.dart';
import 'package:tradly_app/features/wish_list/view/wishList.dart';

import '../../../../../core/utils/colors.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      color: AssetsColors.kSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              children: [
                const Text('Groceries',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        fontFamily: 'Montserrat')),
                const Spacer(flex: 8),
                IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.solidHeart,
                    color: Colors.white,
                    size: 20,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, WishList.routeName);
                  },
                ),
                const Spacer(flex: 1),
                const Icon(
                  FontAwesomeIcons.cartShopping,
                  color: Colors.white,
                  size: 20,
                ),
              ],
            ),
            const SizedBox(height: 30),
            const SearchTextField(
              hint: 'Search product',
            ),
          ],
        ),
      ),
    );
  }
}
