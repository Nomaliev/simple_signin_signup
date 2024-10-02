import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_signin_signup/features/authentication/controllers/reset_password_controller.dart';
import 'package:simple_signin_signup/features/authentication/screens/login/login.dart';
import 'package:simple_signin_signup/features/authentication/screens/resetpassword/widgets/reset_button.dart';
import 'package:simple_signin_signup/features/authentication/screens/resetpassword/widgets/reset_password_form.dart';
import 'package:simple_signin_signup/utils/constants/app_sizes.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';
import 'package:simple_signin_signup/utils/constants/helpers.dart';
import 'package:simple_signin_signup/utils/constants/text_strings.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDark(context);
    Get.put(ResetPasswordController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.offAll(() => const LoginPage()),
            icon: Icon(
              Icons.arrow_back,
              color: isDark ? AppColors.white : AppColors.black,
            )),
      ),
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
                      Text(AppTextStrings.resetPassword,
                          style: Theme.of(context).textTheme.headlineLarge),
                      SizedBox(height: AppSizes.sectionGap),
                      const ResetPasswordForm(),
                      SizedBox(height: AppSizes.sectionGap),
                      const ResetButton(),
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
