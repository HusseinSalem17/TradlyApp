import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradly_app/features/auth_feature/presentation/manager/login_cubit/login_cubit.dart';
import 'package:tradly_app/features/auth_feature/presentation/manager/register_cubit/register_cubit.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/text_styles.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.isLogin = true,
  }) : super(key: key);

  final bool isLogin;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330,
      height: 60,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(
              vertical: 15,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
          ),
          onPressed: onPressed,
          child: isLogin
              ? BlocBuilder<LoginCubit, LoginState>(
                  builder: (context, state) {
                    return state is LoginLoading
                        ? const CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              AssetsColors.kSecondaryColor,
                            ),
                          )
                        : Text(
                            text,
                            style: Styles.textStyleMedium18.copyWith(
                              color: AssetsColors.kSecondaryColor,
                            ),
                          );
                  },
                )
              : BlocBuilder<RegisterCubit, RegisterState>(
                  builder: (context, state) {
                    return state is RegisterLoading
                        ? const CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              AssetsColors.kSecondaryColor,
                            ),
                          )
                        : Text(
                            text,
                            style: Styles.textStyleMedium18.copyWith(
                              color: AssetsColors.kSecondaryColor,
                            ),
                          );
                  },
                )),
    );
  }
}
