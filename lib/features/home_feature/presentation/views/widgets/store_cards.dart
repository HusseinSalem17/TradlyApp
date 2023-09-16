import 'package:flutter/material.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/core/utils/text_styles.dart';
import 'package:tradly_app/features/home_feature/presentation/views/widgets/store_card_item.dart';

import '../../../../../core/widgets/custom_botton.dart';

class StoreMenu extends StatelessWidget {
  const StoreMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Stack(
        children: [
          Container(
            color: AssetsColors.kSecondaryColor,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Store to follow',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                          fontFamily: kMontserrat,
                          color: Colors.white)),
                  Spacer(),
                  CustomButton(
                    bottonTitle: 'View all',
                    width: 130,
                    height: 30,
                    fontSize: 16,
                    color: Colors.white,
                    fontColor: AssetsColors.kSecondaryColor,
                  )
                ],
              ),
            ),
            height: 184,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 20,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return const StoreCardItem();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
