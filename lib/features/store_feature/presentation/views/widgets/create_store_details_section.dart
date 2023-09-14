import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
class CreateStoreDetailsSection extends StatelessWidget {
  const CreateStoreDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Container(
          color: AssetsColors.white,
          child: const SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}