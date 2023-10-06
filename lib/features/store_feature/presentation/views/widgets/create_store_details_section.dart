import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradly_app/core/widgets/custom_error_widget.dart';
import 'package:tradly_app/core/widgets/custom_loading_indicator.dart';
import 'package:tradly_app/features/store_feature/data/models/create_store_model/coordinates.dart';

import 'package:tradly_app/features/store_feature/presentation/manager/create_store_cubit/create_store_cubit.dart';
import 'package:tradly_app/features/store_feature/presentation/views/created_store_screen.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/widgets/custom_show_toast.dart';
import '../../../data/models/create_store_model/account.dart';
import 'custom_text_field_input_chip.dart';
import 'custom_text_form_field.dart';

class CreateStoreDetailsSection extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final List<TextEditingController> textControllers;
  final List<String> textFormFiledLabels;

  const CreateStoreDetailsSection({
    super.key,
    required this.formKey,
    required this.textControllers,
    required this.textFormFiledLabels,
  });

  // TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Container(
        color: AssetsColors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                ...List.generate(
                  8,
                  (index) {
                    return CustomTextFormField(
                      labelText: textFormFiledLabels[index],
                      textFormController: textControllers[index],
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                    );
                  },
                ),

                /// save it don't delete
                // CustomTextFieldInputChip(
                //   textEditingController: controller,
                //   labelText: 'Tagline',
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
