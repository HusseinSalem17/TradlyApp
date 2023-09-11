//import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/features/auth_feature/presentation/views/widgets/custom_text_field.dart';
import 'package:tradly_app/widgets/custom_botton.dart';

class VerifyView extends StatelessWidget {
  static const routeName = '/OTP-screen';

  const VerifyView({super.key});
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
            'Phone Verification',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const Text('Didn’t you received any code? ',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w300)),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Resent new code',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w300)),
          ),
          const Spacer(),
          Row(
            children: [
              const Spacer(),
              SizedBox(
                  height: 45,
                  width: 45,
                  child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ])),
              const Spacer(),
              SizedBox(
                  height: 45,
                  width: 45,
                  child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ])),
              const Spacer(),
              SizedBox(
                  height: 45,
                  width: 45,
                  child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ])),
              const Spacer(),
              SizedBox(
                  height: 45,
                  width: 45,
                  child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ])),
              const Spacer(),
              SizedBox(
                  height: 45,
                  width: 45,
                  child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ])),
              const Spacer(),
              SizedBox(
                  height: 45,
                  width: 45,
                  child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ])),
              const Spacer(),
            ],
          ),
          const Spacer(),
          
          CustomBottom(
            bottomTitle: 'Verify',
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
