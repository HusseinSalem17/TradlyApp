import 'package:flutter/material.dart';
import 'package:tradly_app/constants.dart';
import 'package:tradly_app/views/registeration/signup_screen.dart';

void main() {
  runApp(const TradlyApp());
}

class TradlyApp extends StatelessWidget {
  const TradlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: {
      //   'LoginScreen': (context) => LoginScreen(),
      //   'SignUpScreen': (context) => SignUpScreen(),
      // },
      // initialRoute: 'LoginScreen',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kprimaryColor),
      home: SignUpScreen(),
    );
  }
}
