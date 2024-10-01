import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:simple_signin_signup/data/repositories/authentication_repo.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!.email;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('HELLO ! $user '),
            TextButton(
                onPressed: () => AuthenticationRepository.instance.signOut(),
                child: const Text("Log Out"))
          ],
        ),
      ),
    );
  }
}
