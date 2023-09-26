import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/colors.dart';
import '../created_store_screen.dart';
import 'custom_text_field_input_chip.dart';
import 'custom_text_form_field.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/custom_button.dart';

class AddProductDetailsSection extends StatefulWidget {
  const AddProductDetailsSection({
    super.key,
  });

  @override
  State<AddProductDetailsSection> createState() =>
      _AddProductDetailsSectionState();
}

class _AddProductDetailsSectionState extends State<AddProductDetailsSection> {
  TextEditingController controller = TextEditingController();
  final List<TextEditingController> textControllers = List.generate(
    7,
    (index) => TextEditingController(),
  );

  @override
  void dispose() {
    for (var controller in textControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Container(
          color: AssetsColors.white,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CustomTextFormField(
                    textFormController: textControllers[0],
                    labelText: 'Product Name',
                  ),
                  CustomTextFormField(
                    textFormController: textControllers[1],
                    labelText: 'Category Product',
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          textFormController: textControllers[2],
                          labelText: 'Price',
                        ),
                      ),
                      const SizedBox(width: 30),
                      Expanded(
                        child: CustomTextFormField(
                          textFormController: textControllers[3],
                          labelText: 'Offer Price',
                        ),
                      ),
                    ],
                  ),
                  CustomTextFormField(
                    textFormController: textControllers[4],
                    labelText: 'Location Details',
                    isMultiLine: true,
                    suffixIcon: const Icon(FontAwesomeIcons.map),
                  ),
                  CustomTextFormField(
                    textFormController: textControllers[5],
                    labelText: 'Product Description',
                    isMultiLine: true,
                  ),
                  CustomTextFormField(
                    textFormController: textControllers[6],
                    labelText: 'Price Type',
                  ),
                  CustomTextFieldInputChip(
                    textEditingController: controller,
                    labelText: 'Additional Details',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: CustomButton(
                      onPressed: () {
                        print(controller.text);
                      },
                      text: 'Add Product',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
