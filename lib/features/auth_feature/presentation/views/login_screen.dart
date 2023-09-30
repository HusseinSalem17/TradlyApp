import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/signup_screen.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/widgets/custom_auth_button.dart';
import 'package:uuid/uuid.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_show_toast.dart';
import '../../../home_feature/presentation/views/home_screen.dart';
import '../../data/models/auth/auth.dart';
import '../../data/models/auth/user.dart';
import '../manager/auth_cubit/auth_cubit.dart';
import '../manager/user_hive_cubit/user_cubit.dart';
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
    String? id;
    return Scaffold(
      backgroundColor: AssetsColors.kSecondaryColor,
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            BlocProvider.of<UserHiveCubit>(context).uuid = id;
            BlocProvider.of<UserHiveCubit>(context)
                .addUserWithAuth(user: state.response);
            Navigator.pushReplacementNamed(context, HomeScreen.routeName);
          } else if (state is AuthFailure) {
            if (state.errMessage == 'user not registered') {
              errorMessage = state.errMessage;
            } else {
              showToast(errorMessage: state.errMessage);
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
                                id = const Uuid().v1();
                                user = User(
                                  uuid: id!,
                                  email: emailController.text,
                                  password: passwordController.text,
                                  type: 'customer',
                                );
                                Auth data = Auth(user: user);
                                BlocProvider.of<AuthCubit>(context)
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
