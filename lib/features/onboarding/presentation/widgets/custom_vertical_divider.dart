import 'package:flutter/material.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.0,
      height: 30.0,
      color: const Color.fromARGB(150, 138, 39, 39),
    );
  }
}
