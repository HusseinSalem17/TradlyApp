//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradly_app/constants.dart';
import 'package:tradly_app/views/registeration/signup_screen.dart';
import 'package:tradly_app/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                //color: Colors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'Login to your account',
              style: TextStyle(
                //color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 50),
            CustomTextField(
              hintText: 'Email/Mobile Number',
            ),
            const SizedBox(height: 20),
            CustomTextField(
              hintText: 'Password',
            ),
            const SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              width: 330,
              height: 50,
              child: const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: kprimaryColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'Forgot your password?',
              style: TextStyle(
                //color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account? ',
                  style: TextStyle(
                    //color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'SignUpScreen');
                  },
                  child: Text(
                    ' Sign up',
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
      ),
    );
  }
}
