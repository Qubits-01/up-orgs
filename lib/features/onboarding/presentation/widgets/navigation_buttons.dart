import 'package:flutter/material.dart';

import 'custom_vertical_divider.dart';
import 'next_button.dart';
import 'previous_button.dart';

// TODO: Make this button control the pageController.
class NavigationButtons extends StatelessWidget {
  const NavigationButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50.0,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Row(
            children: const <Widget>[
              PreviousButton(),
              NextButton(),
            ],
          ),
          const CustomVerticalDivider(),
        ],
      ),
    );
  }
}
