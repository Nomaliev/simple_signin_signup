import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_signin_signup/features/authentication/screens/login/login.dart';
import 'package:simple_signin_signup/utils/constants/app_sizes.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';
import 'package:simple_signin_signup/utils/constants/helpers.dart';
import 'package:simple_signin_signup/utils/constants/image_strings.dart';
import 'package:simple_signin_signup/utils/constants/text_strings.dart';

class PasswordSent extends StatelessWidget {
  const PasswordSent({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDark(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultPadding),
        child: Column(
          children: [
            SizedBox(height: AppSizes.sectionGap * 2),
            const Image(
              image: AssetImage(AppImageStrings.buggyManWhole),
              fit: BoxFit.cover,
            ),
            SizedBox(height: AppSizes.sectionGap),
            Text(
              AppTextStrings.resetLinkSentTitle,
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizes.itemGap),
            Text(
              AppTextStrings.resetLinkSentSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontFamily: ''),
            ),
            SizedBox(height: AppSizes.sectionGap * 4),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.offAll(() => const LoginPage()),
                  child: Text(
                    'Continue',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: isDark ? AppColors.black : AppColors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
