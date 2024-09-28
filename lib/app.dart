import 'package:flutter/material.dart';
import 'package:simple_signin_signup/features/authentication/screens/login/loginpage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
