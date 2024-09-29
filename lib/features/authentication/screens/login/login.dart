import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_signin_signup/features/authentication/screens/resetpassword/reset_password.dart';
import 'package:simple_signin_signup/features/authentication/screens/signup/sign_up.dart';
import 'package:simple_signin_signup/utils/constants/app_sizes.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';
import 'package:simple_signin_signup/utils/constants/helpers.dart';
import 'package:simple_signin_signup/utils/constants/image_strings.dart';
import 'package:simple_signin_signup/utils/constants/text_strings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDark(context);
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                              cursorColor: Colors.black,
                              decoration: const InputDecoration(
                                  labelText: AppTextStrings.email)),
                          const SizedBox(height: AppSizes.itemGap),
                          TextFormField(
                            obscureText: true,
                            cursorColor: Colors.black,
                            decoration: const InputDecoration(
                                labelText: AppTextStrings.password),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) {},
                              ),
                              const Text('Remember Me',
                                  style: TextStyle(fontFamily: ''))
                            ],
                          )
                        ],
                      )),
                      const SizedBox(height: AppSizes.sectionGap),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(AppTextStrings.logIn,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                        color: isDark
                                            ? AppColors.black
                                            : AppColors.white))),
                      ),
                      const SizedBox(height: AppSizes.itemGap),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: isDark
                                    ? const Color.fromARGB(255, 29, 27, 27)
                                    : AppColors.lightButtonColor),
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
                      const SizedBox(height: 92),
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
