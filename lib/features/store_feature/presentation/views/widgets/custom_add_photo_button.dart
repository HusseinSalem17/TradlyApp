import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/text_styles.dart';

class CustomAddPhotosButton extends StatelessWidget {
  const CustomAddPhotosButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(12),
      color: Colors.grey,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: SizedBox(
          height: 100,
          width: MediaQuery.of(context).size.width * 0.36,
          child: Column(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  size: 30,
                  color: AssetsColors.kTextGrey,
                ),
              ),
              Text(
                'Add photos',
                style: Styles.textStyleRegular14.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AssetsColors.kPrimaryTextColor,
                ),
              ),
              Text(
                '1600 x 1200 for hi res',
                style: Styles.textStyleBold10.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AssetsColors.kTextGrey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
