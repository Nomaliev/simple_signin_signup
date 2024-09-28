import 'package:flutter/material.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Column(
                  children: [
                    const Text(
                      'Log In',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 32),
                    TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(20),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          fillColor: AppColors.lightColor,
                          filled: true,
                          labelText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none)),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(20),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          fillColor: AppColors.lightColor,
                          filled: true,
                          labelText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none)),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: AppColors.darkButtonColor,
                            elevation: 0,
                            padding: const EdgeInsets.all(20),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Log In',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: AppColors.lightButtonColor,
                            elevation: 0,
                            padding: const EdgeInsets.all(20),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          )),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
