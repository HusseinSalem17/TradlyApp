import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradly_app/features/store_feature/presentation/manager/create_store_cubit/create_store_cubit.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/create_store_button_section.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/create_store_details_section.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/create_store_logo_section.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../core/widgets/custom_show_toast.dart';
import 'created_store_screen.dart';

class CreateStoreScreen extends StatefulWidget {
  static const routeName = 'create-store-screen';

  const CreateStoreScreen({Key? key}) : super(key: key);

  @override
  State<CreateStoreScreen> createState() => _CreateStoreScreenState();
}

class _CreateStoreScreenState extends State<CreateStoreScreen> {
  late final List<TextEditingController> textControllers;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    textControllers = List.generate(
      8,
      (index) => TextEditingController(),
    );

    super.initState();
  }

  @override
  void dispose() {
    for (var controller in textControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'My Store',
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocConsumer<CreateStoreCubit, CreateStoreState>(
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
                return const Expanded(child: CustomLoadingIndicator());
              } else {
                return Expanded(
                  child: CustomScrollView(
                    physics: const BouncingScrollPhysics(),
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(
                          children: [
                            const LogoSection(),
                            CreateStoreDetailsSection(
                              textControllers: textControllers,
                              formKey: formKey,
                              textFormFiledLabels:
                                  BlocProvider.of<CreateStoreCubit>(context)
                                      .textFormFiledLabels,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
          ButtonSection(formKey: formKey, textControllers: textControllers),
        ],
      ),
    );
  }
}
