import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_signin_signup/utils/constants/app_sizes.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';
import 'package:simple_signin_signup/utils/constants/helpers.dart';
import 'package:simple_signin_signup/utils/constants/text_strings.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDark(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
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
              padding: const EdgeInsets.all(AppSizes.defaultPadding),
              child: Column(
                children: [
                  Column(
                    children: [
                      const Text(
                        AppTextStrings.signUp,
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: AppSizes.sectionGap),
                      Form(
                          child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: AppTextStrings.email,
                            ),
                          ),
                          const SizedBox(height: AppSizes.itemGap),
                          TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: AppTextStrings.password,
                              )),
                          const SizedBox(height: AppSizes.itemGap),
                          TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: AppTextStrings.confirmPassword,
                              )),
                        ],
                      )),
                      const SizedBox(height: AppSizes.sectionGap),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(AppTextStrings.signUp,
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
                            onPressed: () {},
                            child: Text(
                              AppTextStrings.logIn,
                              style: Theme.of(context).textTheme.titleLarge,
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
