import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!.email;
    return const Scaffold(
      body: Center(
        child: Text('HELLO !'),
      ),
    );
  }
}
