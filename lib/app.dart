import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_signin_signup/features/authentication/screens/login/loginpage.dart';
import 'package:simple_signin_signup/utils/constants/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.system,
      home: const LoginPage(),
    );
  }
}
