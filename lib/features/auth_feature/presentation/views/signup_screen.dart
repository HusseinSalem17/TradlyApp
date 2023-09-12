import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tradly_app/constants.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/widgets/registration_custom_button.dart';

import 'package:http/http.dart' as http;
import 'package:tradly_app/widgets/custom_botton.dart';
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
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Text(
                'Welcome to tradly',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
              const SizedBox(height: 40),
              const Text('Signup to your account',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w300)),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                controller: firstNameController,
                hintText: 'First Name',
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: lastNameController,
                hintText: 'Last Name',
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: emailController,
                hintText: 'Email/Mobile Number',
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: passwordController,
                hintText: 'Password',
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: rePasswordController,
                hintText: 'Re-enter Password',
              ),
              const SizedBox(height: 40),
              CustomButton(
                bottomTitle: 'Create',
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                fontColor: kSecondaryColor,
                onTap: () {
                  login();
                },
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Have an account? ',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w300)),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(' Sign in',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            ],
          ),
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
        "first_name": "Hussein",
        "last_name": "Salem",
        "email": "husseinsalem910@gmail.com",
        "password": "01093637794",
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
