import 'package:flutter/material.dart';

class UnderDevelopmentScreen extends StatelessWidget {
  static const routeName = '/under-development';

  const UnderDevelopmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Under Development'),
        ),
        body: const Center(
          child: Text(
            'Under Development',
            style: TextStyle(fontSize: 32.0),
          ),
        ));
  }
}
