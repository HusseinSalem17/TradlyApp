import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradly_app/core/widgets/custom_error_widget.dart';
import 'package:tradly_app/core/widgets/custom_loading_indicator.dart';
import 'package:tradly_app/features/store_feature/data/models/create_store_model/coordinates.dart';

import 'package:tradly_app/features/store_feature/presentation/manager/create_store_cubit/create_store_cubit.dart';
import 'package:tradly_app/features/store_feature/presentation/views/created_store_screen.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/custom_button.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/widgets/custom_show_toast.dart';
import '../../../../auth_feature/data/models/response/response_login/response_login.dart';
import '../../../../auth_feature/presentation/manager/user_hive_cubit/user_cubit.dart';

import '../../../data/models/create_store_model/account.dart';

import '../../../data/models/create_store_model/create_store_models.dart';
import '../../../data/models/create_store_model/location.dart';
import 'custom_text_field_input_chip.dart';
import 'custom_text_form_field.dart';

class CreateStoreDetailsSection extends StatefulWidget {
  const CreateStoreDetailsSection({
    super.key,
  });

  @override
  State<CreateStoreDetailsSection> createState() =>
      _CreateStoreDetailsSectionState();
}

class _CreateStoreDetailsSectionState extends State<CreateStoreDetailsSection> {
  TextEditingController controller = TextEditingController();
  late Account storeData;
  final List<TextEditingController> textControllers = List.generate(
    8,
    (index) => TextEditingController(),
  );
  final List<String> textFormFiledLabels = [
    'Store Name',
    'Store Web Address',
    'Store Description',
    'Store Type',
    'Address',
    'City',
    'Country',
    'Courier Name',
  ];
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    for (var controller in textControllers) {
      controller.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateStoreCubit, CreateStoreState>(
      listener: (context, state) {
        if (state is CreateStoreSuccess) {
          showToast(errorMessage: "Store created successfully");
          Navigator.pushNamed(
            context,
            CreatedStoreScreen.routeName,
          );
        } else if (state is CreateStoreFailure) {
          showToast(errorMessage: state.errorMessage);
          print(state.errorMessage);
        }
      },
      builder: (context, state) {
        if (state is CreateStoreLoading) {
          return const CustomLoadingIndicator();
        } else {
          return Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Container(
              color: AssetsColors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: _formKey,
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
                      CustomTextFieldInputChip(
                        textEditingController: controller,
                        labelText: 'Tagline',
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: CustomButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              UniqueKey uniqueKey = UniqueKey();
                              int uniqueId = uniqueKey.hashCode;
                              CreateStoreModel createStoreModel;
                              createStoreModel = CreateStoreModel(
                                account: Account(
                                  id: uniqueId,
                                  name: textControllers[0].text,
                                  uniqueName: textControllers[1].text,
                                  description: textControllers[2].text,
                                  type: textControllers[3].text,
                                  location: Location(
                                    formattedAddress: textControllers[4].text,
                                    city: textControllers[5].text,
                                    country: textControllers[6].text,
                                    postcode: textControllers[7].text,
                                  ),
                                  active: true,
                                ),
                              );
                              String? authKey =
                                  BlocProvider.of<UserHiveCubit>(context)
                                      .getUserWithAuth()
                                      ?.data!
                                      .user
                                      ?.key
                                      ?.authKey;
                              print(
                                'your auth is ::: $authKey',
                              );
                              print('your id is : $uniqueId');
                              BlocProvider.of<CreateStoreCubit>(context)
                                  .createStore(
                                data: createStoreModel,
                                authKey: authKey!,
                              );
                            }
                          },
                          text: 'Create',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
