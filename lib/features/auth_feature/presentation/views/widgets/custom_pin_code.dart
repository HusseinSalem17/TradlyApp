import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../core/utils/colors.dart';
import '../../../data/models/request_verify/request_verify.dart';
import '../../manager/verify_cubit/verify_cubit.dart';

class CustomPinCodeTextField extends StatelessWidget {
  const CustomPinCodeTextField({
    super.key,
    required this.context,
    required this.otpFiledController,
    required this.verifyId,
  });
  final int verifyId;
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
        // RequestVerify data = RequestVerify(
        //   verifyId: verifyId,
        //   code: int.parse(
        //     otpFiledController.text.trim(),
        //   ),
        // );
        // BlocProvider.of<VerifyCubit>(context).verify(data: data);
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
