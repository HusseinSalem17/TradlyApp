//import 'dart:ffi';
//import 'dart:js';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:tradly_app/constants.dart';
import 'package:tradly_app/widgets/custom_text_field.dart';
import 'package:tradly_app/widgets/registeration_custom_button.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor,
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
            RegiserationButton(
              onPressed: () {
                //login();
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
                    Navigator.pushNamed(context, 'SignUpScreen');
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
