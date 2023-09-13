import 'package:flutter/material.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/signup_screen.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/widgets/registration_custom_button.dart';

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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 150),
            const Text(
              'Welcome to tradly',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'Login to your account',
              style: TextStyle(
                fontSize: 16,
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
                // login();
              },
              text: 'Login',
            ),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: () {},
              child: const Text(
                'Forgot your password?',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account? ',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SignUpScreen.routeName);
                  },
                  child: const Text(
                    ' Sign up',
                    style: TextStyle(
                      fontSize: 18,
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
}
