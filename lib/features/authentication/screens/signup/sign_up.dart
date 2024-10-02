import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_signin_signup/features/authentication/controllers/signup_controller.dart';
import 'package:simple_signin_signup/features/authentication/screens/signup/widgets/login_button.dart';
import 'package:simple_signin_signup/features/authentication/screens/signup/widgets/signup_appbar.dart';
import 'package:simple_signin_signup/features/authentication/screens/signup/widgets/signup_button.dart';
import 'package:simple_signin_signup/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:simple_signin_signup/utils/constants/app_sizes.dart';
import 'package:simple_signin_signup/utils/constants/text_strings.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignupController());
    return Scaffold(
      appBar: const SignupAppBar(),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(AppSizes.defaultPadding),
              child: Column(
                children: [
                  Column(
                    children: [
                      const Text(
                        AppTextStrings.signUp,
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: AppSizes.sectionGap),
                      const SignupForm(),
                      SizedBox(height: AppSizes.sectionGap),
                      const SignupButton(),
                      SizedBox(height: AppSizes.itemGap),
                      const LoginButton(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
