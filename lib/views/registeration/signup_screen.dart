import 'package:flutter/material.dart';
import 'package:tradly_app/constants.dart';
import 'package:tradly_app/widgets/custom_text_field.dart';
import 'package:http/http.dart' as http;
import 'package:tradly_app/widgets/registeration_custom_button.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  var fristNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var rePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              controller:fristNameController,
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
            RegiserationButton(
              onPressed: () {},
              text: 'Create',
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
      ),
    );
  }
}
