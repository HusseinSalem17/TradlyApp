import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/core/utils/text_styles.dart';
import 'package:tradly_app/features/auth_feature/data/models/auth/user.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/verify_screen.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/widgets/custom_auth_button.dart';

import 'package:uuid/uuid.dart';

import '../../../../core/utils/functions/validators.dart';
import '../../data/models/auth/auth.dart';
import '../manager/register_cubit/register_cubit.dart';
import 'widgets/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/signup-screen';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController rePasswordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    rePasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late User user;
    String? errorMessage;
    return Scaffold(
      backgroundColor: AssetsColors.kSecondaryColor,
      body: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          if (state is RegisterSuccess) {
            Navigator.pushNamed(
              context,
              VerifyView.routeName,
              arguments: [state.response.data!.verifyId, user],
            );
          } else if (state is RegisterFailure) {
            if (state.errMessage == 'User already exists') {
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
          return Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 100),
                    const Text(
                      'Welcome to tradly',
                      style: Styles.textStyleMedium24,
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'Signup to your account',
                      style: Styles.textStyleMedium16.copyWith(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      controller: firstNameController,
                      hintText: 'First Name',
                      keyboardType: TextInputType.name,
                      onChanged: (value) {
                        setState(() {
                          isButtonDisabled = disableButton;
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: lastNameController,
                      hintText: 'Last Name',
                      keyboardType: TextInputType.name,
                      onChanged: (value) {
                        setState(() {
                          isButtonDisabled = disableButton;
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: emailController,
                      hintText: 'Email/Mobile Number',
                      keyboardType: TextInputType.emailAddress,
                      errorText: errorMessage,
                      onChanged: (value) {
                        setState(() {
                          isButtonDisabled = disableButton;
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: (value) {
                        setState(() {
                          isButtonDisabled = disableButton;
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: rePasswordController,
                      hintText: 'Re-enter Password',
                      keyboardType: TextInputType.visiblePassword,
                      confirmPasswordController: passwordController,
                      onChanged: (value) {
                        setState(() {
                          isButtonDisabled = disableButton ||
                              passwordsMatch(passwordController.text,
                                  rePasswordController.text);
                        });
                      },
                      // to check if teh confirm password is same as the password
                      errorText: passwordsMatch(passwordController.text,
                              rePasswordController.text)
                          ? null
                          : 'Passwords do not match',
                    ),
                    const SizedBox(height: 20),
                    CustomAuthButton(
                      text: 'Create',
                      isLogin: false,
                      onPressed: isButtonDisabled
                          ? null
                          : () {
                              if (_formKey.currentState!.validate()) {
                                String id = const Uuid().v1();
                                user = User(
                                  uuid: id,
                                  firstName: firstNameController.text,
                                  lastName: lastNameController.text,
                                  email: emailController.text,
                                  password: passwordController.text,
                                  type: 'customer',
                                );
                                Auth data = Auth(user: user);
                                BlocProvider.of<RegisterCubit>(context)
                                    .register(data: data);
                              }
                            },
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Have an account? ',
                          style: Styles.textStyleMedium16.copyWith(
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            ' Sign in',
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

  bool get disableButton {
    return firstNameController.text.isEmpty ||
        lastNameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty;
  }
}
