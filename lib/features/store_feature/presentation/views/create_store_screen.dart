import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradly_app/features/store_feature/presentation/manager/create_store_cubit/create_store_cubit.dart';

import 'package:tradly_app/features/store_feature/presentation/views/widgets/create_store_details_section.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/create_store_logo_section.dart';
import 'package:tradly_app/features/store_feature/presentation/views/widgets/custom_button.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_loading_indicator.dart';

class CreateStoreScreen extends StatelessWidget {
  static const routeName = 'create-store-screen';

  const CreateStoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'My Store',
      ),
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      LogoSection(),
                      CreateStoreDetailsSection(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
          //   child: CustomButton(
          //     onPressed: () {},
          //     text: 'Create',
          //   ),
          // ),
        ],
      ),
    );
  }
}
