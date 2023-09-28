import 'package:flutter/material.dart';
import 'package:tradly_app/core/widgets/custom_app_bar_with_actions.dart';
import 'package:tradly_app/features/check_out_feature/presentation/views/widgets/checkout_screen_body.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBarWithActions(
        title: 'Checkout',
      ),
      body: CheckoutScreenBody(),
    );
  }
}
