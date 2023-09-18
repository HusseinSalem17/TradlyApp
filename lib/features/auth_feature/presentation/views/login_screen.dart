import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/core/widgets/custom_error_widget.dart';
import 'package:tradly_app/core/widgets/custom_loading_indicator.dart';
import 'package:tradly_app/features/auth_feature/presentation/manager/login_cubit/login_cubit.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/signup_screen.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/widgets/registration_custom_button.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/utils/text_styles.dart';
import '../../../home_feature/presentation/views/home_screen.dart';
import '../../data/models/auth/auth.dart';
import '../../data/models/auth/user.dart';
import '../manager/user_cubit/add_user_cubit.dart';
import 'widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login-screen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late User user;
    return Scaffold(
        backgroundColor: AssetsColors.kSecondaryColor,
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccess) {
              BlocProvider.of<AddUserCubit>(context)
                  .addUserForLogin(user: user);
              Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            }
          },
          builder: (context, state) {
            if (state is LoginLoading) {
              return const CustomLoadingIndicator();
            } else if (state is LoginFailure) {
              return CustomErrorWidget(
                errMessage: state.errMessage,
              );
            } else {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 150),
                      const Text(
                        'Welcome to tradly',
                        style: Styles.textStyleMedium24,
                      ),
                      const SizedBox(height: 50),
                      Text(
                        'Login to your account',
                        style: Styles.textStyleMedium16.copyWith(
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      const SizedBox(height: 50),
                      CustomTextField(
                        controller: emailController,
                        hintText: 'Email/Mobile Number',
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        controller: passwordController,
                        hintText: 'Password',
                      ),
                      const SizedBox(height: 40),
                      RegistrationButton(
                        onPressed: () {
                          String id = const Uuid().v1();
                          user = User(
                            uuid: id,
                            email: 'husseinsalem910@gmail.com',
                            password: '01093637794',
                            type: 'customer',
                          );
                          Auth data = Auth(user: user);

                          BlocProvider.of<LoginCubit>(context)
                              .login(data: data);
                        },
                        text: 'Login',
                      ),
                      const SizedBox(height: 50),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Forgot your password?',
                          style: Styles.textStyleMedium18.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don\'t have an account? ',
                            style: Styles.textStyleMedium18,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, SignUpScreen.routeName);
                            },
                            child: Text(
                              ' Sign up',
                              style: Styles.textStyleMedium18.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }
          },
        ));
  }
}
