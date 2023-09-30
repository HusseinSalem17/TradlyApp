import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradly_app/core/utils/text_styles.dart';
import '../../../core/utils/colors.dart';
import '../../auth_feature/presentation/manager/auth_cubit/auth_cubit.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 4,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            color: AssetsColors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Edit Profile',
                  style: Styles.textStyleMedium18,
                ),
              ),
              const Divider(
                color: AssetsColors.kPrimaryColor,
                height: 0,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Language & Currency',
                  style: Styles.textStyleMedium18,
                ),
              ),
              const Divider(
                color: AssetsColors.kPrimaryColor,
                height: 0,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Feedback',
                  style: Styles.textStyleMedium18,
                ),
              ),
              const Divider(
                color: AssetsColors.kPrimaryColor,
                height: 0,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Refer a Friend',
                  style: Styles.textStyleMedium18,
                ),
              ),
              const Divider(
                color: AssetsColors.kPrimaryColor,
                height: 0,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Terms & Conditions',
                  style: Styles.textStyleMedium18,
                ),
              ),
              const Divider(
                color: AssetsColors.kPrimaryColor,
                height: 0,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              TextButton(
                onPressed: () {
                  BlocProvider.of<AuthCubit>(context).logout(context);
                },
                child: const Text(
                  'Logout',
                  style: Styles.errorTextStyle,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
