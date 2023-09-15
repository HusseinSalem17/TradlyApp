import 'package:flutter/material.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/core/utils/text_styles.dart';
import 'package:tradly_app/core/widgets/custom_botton.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/store_card_item.dart';

class StoreMenu extends StatelessWidget {
  const StoreMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        color: AssetsColors.kSecondaryColor,
        height: MediaQuery.of(context).size.height * 0.31,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Text('Store to follow',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontFamily: kMontserrat,
                          fontWeight: FontWeight.w700)),
                  Spacer(),
                  CustomButton(
                    height: 30,
                    width: 120,
                    fontSize: 15,
                    fontColor: AssetsColors.kSecondaryColor,
                    bottomTitle: 'View all',
                    color: Colors.white,
                    //onTap: onTap,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 20,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return const StoreCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
