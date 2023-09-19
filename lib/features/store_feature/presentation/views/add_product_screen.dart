import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/core/utils/image_assets.dart';
import 'package:tradly_app/core/utils/text_styles.dart';
import 'package:tradly_app/core/widgets/custom_app_bar.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/add_photos_section.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/add_product_details_section.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/create_store_details_section.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/create_store_logo_section.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/custom_text_field_input_chip.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/custom_text_form_field.dart';

import 'created_store_screen.dart';

class AddProductScreen extends StatelessWidget {
  static const routeName = '/add-product-screen';

  const AddProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Add Product'),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                AddPhotosSection(),
                AddProductDetailsSection(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
