import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/features/auth_feature/presentation/manager/login_cubit/login_cubit.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/signup_screen.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/widgets/custom_auth_button.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/utils/text_styles.dart';
import '../../../home_feature/presentation/views/home_screen.dart';
import '../../data/models/auth/auth.dart';
import '../../data/models/auth/user.dart';
import '../manager/user_cubit/user_cubit.dart';
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

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late User user;
    String? errorMessage;
    return Scaffold(
      backgroundColor: AssetsColors.kSecondaryColor,
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            BlocProvider.of<UserCubit>(context)
                .addUserWithAuth(user: state.response);
            Navigator.pushReplacementNamed(context, HomeScreen.routeName);
          } else if (state is LoginFailure) {
            if (state.errMessage == 'user not registered') {
              errorMessage = state.errMessage;
            } else {
              Fluttertoast.showToast(
                msg: state.errMessage,
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: AssetsColors.white,
                textColor: AssetsColors.errColor,
              );
            }
          }
        },
        builder: (context, state) {
          var isButtonDisabled =
              emailController.text.isEmpty || passwordController.text.isEmpty;

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0,
              ),
              child: Form(
                key: _formKey,
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
                      keyboardType: TextInputType.emailAddress,
                      errorText: errorMessage,
                      onChanged: (value) {
                        setState(() {
                          isButtonDisabled = emailController.text.isEmpty ||
                              passwordController.text.isEmpty;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: (value) {
                        setState(() {
                          isButtonDisabled = emailController.text.isEmpty ||
                              passwordController.text.isEmpty;
                        });
                      },
                    ),
                    const SizedBox(height: 40),
                    CustomAuthButton(
                      onPressed: isButtonDisabled
                          ? null // Disable the button if the fields are empty
                          : () {
                              if (_formKey.currentState!.validate()) {
                                String id = const Uuid().v1();
                                user = User(
                                  uuid: id,
                                  email: emailController.text,
                                  password: emailController.text,
                                  type: 'customer',
                                );
                                Auth data = Auth(user: user);
                                BlocProvider.of<LoginCubit>(context)
                                    .login(data: data);
                              }
                            },
                      text: 'Login',
                    ),
                    const SizedBox(height: 50),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Forgot your password?',
                        style: Styles.textStyleMedium16.copyWith(
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account? ',
                          style: Styles.textStyleMedium16.copyWith(
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, SignUpScreen.routeName);
                          },
                          child: Text(
                            ' Sign up',
                            style: Styles.textStyleMedium16.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
