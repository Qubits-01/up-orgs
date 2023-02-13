import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text(
        'UP-Orgs',
        style: TextStyle(fontSize: 32.0),
      ),
    ));
  }
}
