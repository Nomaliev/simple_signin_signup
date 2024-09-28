import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_signin_signup/features/authentication/screens/resetpassword/reset_password.dart';
import 'package:simple_signin_signup/features/authentication/screens/signup/sign_up.dart';
import 'package:simple_signin_signup/utils/constants/app_sizes.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';
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
                      Form(
                          child: Column(
                        children: [
                          TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(20),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                fillColor: AppColors.lightColor,
                                filled: true,
                                labelStyle: const TextStyle(fontFamily: 'Play'),
                                labelText: AppTextStrings.email,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide.none)),
                          ),
                          const SizedBox(height: AppSizes.itemGap),
                          TextFormField(
                            obscureText: true,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(20),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                fillColor: AppColors.lightColor,
                                filled: true,
                                labelText: AppTextStrings.password,
                                labelStyle: const TextStyle(fontFamily: 'Play'),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide.none)),
                          )
                        ],
                      )),
                      const SizedBox(height: AppSizes.sectionGap),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: AppColors.darkButtonColor,
                              elevation: 0,
                              padding:
                                  const EdgeInsets.all(AppSizes.defaultPadding),
                            ),
                            onPressed: () {},
                            child: Text(AppTextStrings.logIn,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(color: Colors.white))),
                      ),
                      const SizedBox(height: AppSizes.itemGap),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: AppColors.lightButtonColor,
                              elevation: 0,
                              padding:
                                  const EdgeInsets.all(AppSizes.defaultPadding),
                            ),
                            onPressed: () => Get.to(() => const SignUpPage()),
                            child: Text(AppTextStrings.signUp,
                                style: Theme.of(context).textTheme.titleLarge)),
                      ),
                      const SizedBox(height: AppSizes.smallGap),
                      GestureDetector(
                        onTap: () => Get.to(() => const ResetPasswordPage()),
                        child: const Text(
                          AppTextStrings.forgotPassword,
                          style: TextStyle(fontFamily: ''),
                        ),
                      ),
                      const SizedBox(height: 102),
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
