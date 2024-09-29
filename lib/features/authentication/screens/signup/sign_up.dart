import 'package:flutter/material.dart';
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
    return const Scaffold(
      appBar: SignupAppBar(),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(AppSizes.defaultPadding),
              child: Column(
                children: [
                  Column(
                    children: [
                      Text(
                        AppTextStrings.signUp,
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: AppSizes.sectionGap),
                      SignupForm(),
                      SizedBox(height: AppSizes.sectionGap),
                      SignupButton(),
                      SizedBox(height: AppSizes.itemGap),
                      LoginButton(),
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
