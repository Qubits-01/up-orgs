import 'package:flutter/material.dart';

import 'entry_image_and_text.dart';
import 'header.dart';
import 'navigation_buttons.dart';
import 'themed_background.dart';

class OnboardingEntry extends StatelessWidget {
  const OnboardingEntry({
    super.key,
    required LinearGradient gradient,
    required BoxConstraints boxConstraints,
    required String assetPath,
    required String mainText,
    required String descriptionText,
  })  : _gradient = gradient,
        _boxConstraints = boxConstraints,
        _assetPath = assetPath,
        _mainText = mainText,
        _descriptionText = descriptionText;

  final LinearGradient _gradient;
  final BoxConstraints _boxConstraints;
  final String _assetPath;
  final String _mainText, _descriptionText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        // Themed background.
        ThemedBackground(gradient: _gradient, boxConstraints: _boxConstraints),

        // Skip button and page entry indicator.
        const Header(),

        // Foreground.
        EntryImageAndText(
          boxConstraints: _boxConstraints,
          assetPath: _assetPath,
          mainText: _mainText,
          descriptionText: _descriptionText,
        ),

        // Prev and Next buttons.
        const NavigationButtons(),
      ],
    );
  }
}
