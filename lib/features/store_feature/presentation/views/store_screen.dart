import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:tradly_app/core/utils/text_styles.dart';

import 'package:tradly_app/features/store_feature/presentation/views/widgets/custom_app_bar.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/custom_button.dart';

class StoreScreen extends StatelessWidget {
  static const routeName = '/store-screen';

  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            SvgPicture.asset(
              'assets/images/store_logo_.svg',
              fit: BoxFit.cover,
            ),
            const Spacer(),
            Text(
              'You Don\'t Have a Store ',
              style: Styles.textStyleMedium18.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            CustomButton(
              onPressed: () {},
              text: 'Create Store',
            ),
            const Spacer(flex: 5),
          ],
        ),
      ),
    );
  }
}
