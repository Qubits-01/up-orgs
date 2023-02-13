import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/sign-up';

  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sign-Up'),
        ),
        body: const Center(
          child: Text(
            'Sign-Up',
            style: TextStyle(fontSize: 32.0),
          ),
        ));
  }
}
