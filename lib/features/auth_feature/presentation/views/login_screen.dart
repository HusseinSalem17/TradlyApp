import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:tradly_app/constants.dart';
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
                login();
              },
              text: 'Login',
            ),
            const SizedBox(height: 50),
            const Text(
              'Forgot your password?',
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
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

  Future<void> login() async {
    // print("nada ${emailController.text}");
    // print("nada ${passwordController.text}");
    if (passwordController.text.isNotEmpty && emailController.text.isNotEmpty) {
      var response =
          await http.post(Uri.parse("https://api.tradly.app/v1/users/login"),
              body: (
                {
                  //"uuid": "cea6e059-adbf-4b19-a9c7-0037886050f1",
                  "email": emailController.text,
                  "password": passwordController.text,
                  "type": "customer"
                },
              ),
              headers: ({
                "Authorization": "Bearer $publishable_key",
                "Content-Type": "application/json",
              }));

      // print("nada ${response.statusCode}");
      if (response.statusCode == 200) {
        context;
      } else {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Invalid credentails')));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Black Field NOT Allowed')));
    }
  }
}
