import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_signin_signup/features/authentication/controllers/theme_mode_controller.dart';
import 'package:simple_signin_signup/features/authentication/screens/login/login.dart';
import 'package:simple_signin_signup/utils/constants/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ThemeModeController());
    return Obx(
    ()=> GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        themeMode: controller.setTheme(),
        home: const LoginPage(),
      ),
    );
  }
}
