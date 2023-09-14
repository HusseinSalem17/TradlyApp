
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradly_app/features/auth_feature/data/models/auth/user.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/verify_screen.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/widgets/registration_custom_button.dart';


import 'package:uuid/uuid.dart';

import '../../../../core/widgets/custom_error_widget.dart';
import '../../../../core/widgets/custom_loading_indicator.dart';
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
    return Scaffold(
      body: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          if (state is RegisterSuccess) {
            Navigator.pushReplacementNamed(context, VerifyView.routeName,arguments:state.response.data!.verifyId);
          }
        },
        builder: (context, state) {
          if (state is RegisterLoading) {
            return const CustomLoadingIndicator();
          } else if (state is RegisterFailure) {
            return CustomErrorWidget(
              errMessage: state.errMessage,
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  const Text(
                    'Welcome to tradly',
                    style: TextStyle(
                      //color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Signup to your account',
                    style: TextStyle(
                      //color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    controller: firstNameController,
                    hintText: 'First Name',
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    controller: lastNameController,
                    hintText: 'Last Name',
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    controller: emailController,
                    hintText: 'Email/Mobile Number',
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    controller: passwordController,
                    hintText: 'Password',
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    controller: rePasswordController,
                    hintText: 'Re-enter Password',
                  ),
                  const SizedBox(height: 20),
                  RegistrationButton(
                    text: 'Create',
                    onPressed: () {
                      String id = const Uuid().v1();
                      User user = User(
                        uuid: id,
                        firstName: 'Hussein',
                        lastName: 'Salem',
                        email: 'husseinsalem910@gmail.com',
                        password: '01093637794',
                        type: 'customer',
                      );
                      Auth data = Auth(user: user);
                      BlocProvider.of<RegisterCubit>(context)
                          .register(data: data);
                    },
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Have an account? ',
                        style: TextStyle(
                          //color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          ' Sign in',
                          style: TextStyle(
                            //color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  }
