import 'package:flutter/material.dart';
import 'package:tradly_app/constants.dart';


class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            color: kprimaryColor, borderRadius: BorderRadius.circular(32)),
        child: Center(
            child: isLoading
                ? const CircularProgressIndicator(color: Colors.black45)
                : const Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  )),
      ),
    );
  }
}
