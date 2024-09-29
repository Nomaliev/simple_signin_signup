import 'package:flutter/material.dart';
import 'package:simple_signin_signup/features/authentication/screens/resetpassword/widgets/reset_button.dart';
import 'package:simple_signin_signup/features/authentication/screens/resetpassword/widgets/reset_password_form.dart';
import 'package:simple_signin_signup/utils/constants/app_sizes.dart';
import 'package:simple_signin_signup/utils/constants/text_strings.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                      Text(AppTextStrings.resetPassword,
                          style: Theme.of(context).textTheme.headlineLarge),
                      const SizedBox(height: AppSizes.sectionGap),
                      const ResetPasswordForm(),
                      const SizedBox(height: AppSizes.sectionGap),
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
