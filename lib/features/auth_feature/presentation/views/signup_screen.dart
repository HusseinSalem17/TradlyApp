import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tradly_app/constants.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/widgets/registration_custom_button.dart';

import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';

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
              onPressed: () {
                login();
              },
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

  Future<void> login() async {
    var uuid = const Uuid();
    String id = uuid.v1();
    // API endpoint
    var url = 'https://api.tradly.app/v1/users/register/';
    // Request body
    var body = jsonEncode({
      "user": {
        "uuid": id,
        "first_name": "$firstNameController",
        "last_name": "$lastNameController",
        "email": "$emailController",
        "password": "$passwordController",
        "type": "customer"
      }
    });
    // Headers
    var headers = {
      'Content-Type': 'application/json',
      "Authorization": "Bearer $publishable_key",
    };
    // Send POST request
    var response =
        await http.post(Uri.parse(url), body: body, headers: headers);

    // print("nada ${response.statusCode}");
    if (response.statusCode == 200) {
      // Request successful
      var responseBody = jsonDecode(response.body);
      print(responseBody);
    } else {
      // ignore: use_build_context_synchronously
      print('ERRROR ${response.statusCode}');
    }
  }
}
