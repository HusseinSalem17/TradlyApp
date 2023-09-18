import 'package:flutter/material.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/store_custom_button.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/text_styles.dart';

class EditAndViewStoreSection extends StatelessWidget {
  const EditAndViewStoreSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AssetsColors.white,
      height: MediaQuery.of(context).size.height * 0.3,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(
            flex: 2,
          ),
          const CircleAvatar(
            backgroundColor: AssetsColors.kSecondaryColor,
            radius: 24,
            child: Text(
              'T',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const Spacer(),
          Text(
            'Tradly Store',
            style:
                Styles.textStyleRegular24.copyWith(fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StoreCustomButton(
                backgroundColor: AssetsColors.white,
                buttonTitle: 'Edit Store',
                textColor: AssetsColors.kSecondaryColor,
              ),
              SizedBox(
                width: 20,
              ),
              StoreCustomButton(
                backgroundColor: AssetsColors.kSecondaryColor,
                buttonTitle: 'View Store',
                textColor: AssetsColors.white,
              ),
            ],
          ),
          const Spacer(),
          const Divider(
            thickness: 1,
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text(
                'Remove  Store',
                style: Styles.textStyleMedium18
                    .copyWith(fontSize: 14, color: AssetsColors.kTextGrey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
