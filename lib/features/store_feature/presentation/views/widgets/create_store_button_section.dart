import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/custom_button.dart';

import '../../manager/create_store_cubit/create_store_cubit.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
    required this.formKey,
    required this.textControllers,
  });

  final GlobalKey<FormState> formKey;
  final List<TextEditingController> textControllers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        left: 20,
        right: 20,
      ),
      child: CustomButton(
        onPressed: () {
          BlocProvider.of<CreateStoreCubit>(context).createAccount(
            context,
            formKey,
            textControllers,
          );
        },
        text: 'Create',
      ),
    );
  }
}
