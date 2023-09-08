import 'package:flutter/material.dart';
import 'package:tradly_app/constants.dart';
import 'package:tradly_app/widgets/custom_text_field.dart';
import 'package:http/http.dart' as http;
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Text(
              'Welcome to tradly',
              style: TextStyle(
                //color: Colors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 40),
            Text(
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
              hintText: 'First Name',
            ),
            const SizedBox(height: 10),
            CustomTextField(
              hintText: 'Last Name',
            ),
            const SizedBox(height: 10),
            CustomTextField(
              hintText: 'Email/Mobile Number',
            ),
            const SizedBox(height: 10),
            CustomTextField(
              hintText: 'Password',
            ),
            const SizedBox(height: 10),
            CustomTextField(
              hintText: 'Re-enter Password',
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              width: 330,
              height: 50,
              child: Center(
                child: Text(
                  'Create',
                  style: TextStyle(
                    color: kprimaryColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
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
                  child: Text(
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
