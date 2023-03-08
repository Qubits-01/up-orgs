import 'package:flutter/material.dart';

import '../widgets/entry_image_and_text.dart';
import '../widgets/header.dart';
import '../widgets/maroon_themed_background.dart';
import '../widgets/navigation_buttons.dart';

class OnboardingThirdEntry extends StatelessWidget {
  const OnboardingThirdEntry({
    super.key,
    required BoxConstraints boxConstraints,
    required String assetPath,
    required String mainText,
    required String descriptionText,
  })  : _boxConstraints = boxConstraints,
        _assetPath = assetPath,
        _mainText = mainText,
        _descriptionText = descriptionText;

  final BoxConstraints _boxConstraints;
  final String _assetPath;
  final String _mainText, _descriptionText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        // Maroon themed background.
        MaroonThemedBackground(boxConstraints: _boxConstraints),

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
