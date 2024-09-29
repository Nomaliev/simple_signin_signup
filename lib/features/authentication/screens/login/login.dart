import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_signin_signup/features/authentication/screens/login/widgets/login_button.dart';
import 'package:simple_signin_signup/features/authentication/screens/login/widgets/login_signup_form.dart';
import 'package:simple_signin_signup/features/authentication/screens/login/widgets/signup_button.dart';
import 'package:simple_signin_signup/features/authentication/screens/resetpassword/reset_password.dart';
import 'package:simple_signin_signup/utils/constants/app_sizes.dart';
import 'package:simple_signin_signup/utils/constants/image_strings.dart';
import 'package:simple_signin_signup/utils/constants/text_strings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultPadding),
              child: Column(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 200),
                      Text(
                        AppTextStrings.logIn,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      const SizedBox(height: AppSizes.sectionGap),
                      const LoginSignupForm(),
                      const SizedBox(height: AppSizes.sectionGap),
                      const LoginButton(),
                      const SizedBox(height: AppSizes.itemGap),
                      const SignupButton(),
                      const SizedBox(height: AppSizes.smallGap),
                      GestureDetector(
                        onTap: () => Get.to(() => const ResetPasswordPage()),
                        child: const Text(
                          AppTextStrings.forgotPassword,
                          style: TextStyle(fontFamily: ''),
                        ),
                      ),
                      const SizedBox(height: 39),
                      const Image(image: AssetImage(AppImageStrings.buggyMan))
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
