//import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/core/widgets/custom_botton.dart';
import 'package:tradly_app/core/widgets/custom_show_toast.dart';
import 'package:tradly_app/features/auth_feature/data/models/auth/user.dart';
import 'package:tradly_app/features/auth_feature/data/models/request_verify/request_verify.dart';
import 'package:tradly_app/features/auth_feature/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/widgets/custom_pin_code.dart';
import '../../../home_feature/presentation/views/home_screen.dart';
import '../manager/user_hive_cubit/user_cubit.dart';

class VerifyView extends StatefulWidget {
  static const routeName = '/OTP-screen';

  const VerifyView({super.key, required this.verifyId, required this.user});

  final int verifyId;
  final User user;
  @override
  State<VerifyView> createState() => _VerifyViewState();
}

class _VerifyViewState extends State<VerifyView> {
  final TextEditingController otpFiledController = TextEditingController();

  @override
  void dispose() {
    otpFiledController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AssetsColors.kSecondaryColor,
        appBar: AppBar(
          backgroundColor: AssetsColors.kSecondaryColor,
          elevation: 0,
        ),
        body: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              BlocProvider.of<UserHiveCubit>(context)
                  .addUserWithAuth(user: state.response);
              Navigator.pushNamedAndRemoveUntil(
                context,
                HomeScreen.routeName,
                (route) => false,
              );
            } else if (state is AuthFailure) {
              showToast(errorMessage: state.errMessage);
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 2),
                  const Text(
                    'Phone Verification',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                  const Text(
                    'Enter your OTP code here',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  CustomPinCodeTextField(
                    context: context,
                    otpFiledController: otpFiledController,
                    verifyId: widget.verifyId,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  const Text(
                    'Didn’t you received any code? ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Resent new code',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w300)),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  CustomButton(
                    bottonTitle: 'Verify',
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    fontColor: AssetsColors.kSecondaryColor,
                    onTap: () {
                      RequestVerify data = RequestVerify(
                        verifyId: widget.verifyId,
                        code: int.parse(
                          otpFiledController.text.trim(),
                        ),
                      );
                      BlocProvider.of<AuthCubit>(context).verify(data: data);
                    },
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
