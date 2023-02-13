import 'package:flutter/material.dart';

class PageNotFoundScreen extends StatelessWidget {
  static const routeName = '/page-not-found';

  const PageNotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page Not Found'),
        ),
        body: const Center(
          child: Text(
            'Page Not Found',
            style: TextStyle(fontSize: 32.0),
          ),
        ));
  }
}
