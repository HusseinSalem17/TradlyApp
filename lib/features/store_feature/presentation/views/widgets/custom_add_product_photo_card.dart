import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/colors.dart';

class CustomAddProductPhotoCard extends StatelessWidget {
  const CustomAddProductPhotoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: Container(
            height: 110,
            width: MediaQuery.of(context).size.width * 0.36,
            color: Colors.amber,
            child: Image.asset(
              'assets/images/slider_images/s1.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          right: -7,
          top: -7,
          child: InkWell(
            onTap: () {
              print('Pressed');
            },
            child: const CircleAvatar(
                backgroundColor: AssetsColors.kPrimaryTextColor,
                radius: 10,
                child: Icon(
                  FontAwesomeIcons.xmark,
                  size: 14,
                  color: Colors.white,
                )),
          ),
        ),
      ],
    );
  }
}
