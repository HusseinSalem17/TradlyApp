//import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/widgets/custom_text_field.dart';
import 'package:tradly_app/widgets/custom_botton.dart';

class SendOPTView extends StatelessWidget {
  static const routeName = '/OTP-screen';

  SendOPTView({super.key});

  TextEditingController OTPController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Spacer(flex: 2),
          Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.arrow_back,
                      size: 30, color: Colors.white))),
          const Spacer(flex: 1),
          const Text(
            'Verify your phone number',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          const Spacer(),
          const Text(
              textAlign: TextAlign.center,
              'We have sent you an SMS with a code to \nenter number',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w300)),
          const Spacer(),
          CustomTextField(
            controller: OTPController,
            hintText: 'Mobile Number',
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const Text('Or login with Social network',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w300)),
          ),
          CustomBottom(
            bottomTitle: 'Next',
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            fontColor: kPrimaryColor,
          ),
          const Spacer(flex: 7),
        ]),
      ),
    );
  }
}
