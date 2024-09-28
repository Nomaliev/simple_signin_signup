import 'package:flutter/material.dart';
import 'package:simple_signin_signup/utils/constants/app_sizes.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';
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
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Column(
                    children: [
                      const Text(
                        AppTextStrings.resetPassword,
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: AppSizes.sectionGap),
                      TextFormField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.all(AppSizes.defaultPadding),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            fillColor: AppColors.lightColor,
                            filled: true,
                            labelText: AppTextStrings.email,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none)),
                      ),
                      const SizedBox(height: AppSizes.itemGap),
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
                            child: const Text(
                              AppTextStrings.requestReset,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )),
                      ),
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
