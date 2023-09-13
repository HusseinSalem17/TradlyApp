//import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/core/widgets/custom_botton.dart';

class VerifyView extends StatefulWidget {
  static const routeName = '/OTP-screen';

  const VerifyView({super.key});

  @override
  State<VerifyView> createState() => _VerifyViewState();
}

class _VerifyViewState extends State<VerifyView> {
  final TextEditingController otpFiledController = TextEditingController();

  @override
  void dispose() {
    otpFiledController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AssetsColors.kSecondaryColor,
        appBar: AppBar(
          backgroundColor: AssetsColors.kSecondaryColor,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              const Text(
                'Phone Verification',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
              const Text(
                'Enter your OTP code here',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              buildPinCodeTextField(context),
              const Spacer(
                flex: 1,
              ),
              const Text(
                'Didn’t you received any code? ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Resent new code',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w300)),
              ),
              const Spacer(
                flex: 1,
              ),
              CustomButton(
                bottomTitle: 'Verify',
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                fontColor: AssetsColors.kSecondaryColor,
                onTap: () {
                  print(otpFiledController.text);
                },
              ),
              const Spacer(
                flex: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }

  PinCodeTextField buildPinCodeTextField(BuildContext context) {
    return PinCodeTextField(
      cursorColor: Colors.white,
      animationCurve: Curves.bounceIn,
      animationType: AnimationType.scale,
      appContext: context,
      length: 6,
      controller: otpFiledController,
      keyboardType: TextInputType.number,
      textStyle: const TextStyle(
        color: Colors.white,
      ),
      onCompleted: (result) {
        print(result);
      },
      pinTheme: PinTheme(
        borderRadius: BorderRadius.circular(5),
        selectedColor: AssetsColors.selectedColor,
        shape: PinCodeFieldShape.underline,
        fieldHeight: 50,
        fieldWidth: 40,
        borderWidth: 1,
        activeColor: Colors.white,
        inactiveColor: Colors.white,
        inactiveBorderWidth: 2,
      ),
    );
  }
}
