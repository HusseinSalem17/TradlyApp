import 'package:flutter/cupertino.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../core/utils/colors.dart';

class CustomPinCodeTextField extends StatelessWidget {
  const CustomPinCodeTextField({
    super.key,
    required this.context,
    required this.otpFiledController,
  });

  final BuildContext context;
  final TextEditingController otpFiledController;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      cursorColor: AssetsColors.white,
      animationCurve: Curves.bounceIn,
      animationType: AnimationType.scale,
      appContext: context,
      length: 6,
      controller: otpFiledController,
      keyboardType: TextInputType.number,
      textStyle: const TextStyle(
        color: AssetsColors.white,
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
        activeColor: AssetsColors.white,
        inactiveColor: AssetsColors.white,
        inactiveBorderWidth: 2,
      ),
    );
  }
}
