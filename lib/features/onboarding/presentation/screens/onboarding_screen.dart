import 'package:flutter/material.dart';

import 'onboarding_first_entry.dart';
import 'onboarding_second_entry.dart';
import 'onboarding_third_entry.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  static const routeName = '/onboarding';

  final firstEntryImage =
      'assets/images/visual_elements/undraw_studying_re_deca.svg';
  final firstEntryMainText = 'Discover 200+ Orgs with us';
  final firstEntryDescriptionText =
      'UP-Orgs is a platform that aims to connect people together.';

  final secondEntryImage = '<modify this>';
  final secondEntryMainText = '<modify this>';
  final secondEntryDescriptionText = '<modify this>';

  final thirdEntryImage = '<modify this>';
  final thirdEntryMainText = '<modify this>';
  final thirdEntryDescriptionText = '<modify this>';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (
        BuildContext context,
        BoxConstraints constraints,
      ) {
        return PageView(
          controller: pageController,
          children: <Widget>[
            OnboardingFirstEntry(
              boxConstraints: constraints,
              assetPath: widget.firstEntryImage,
              mainText: widget.firstEntryMainText,
              descriptionText: widget.firstEntryDescriptionText,
            ),
            OnboardingSecondEntry(
              boxConstraints: constraints,
              assetPath: widget.firstEntryImage,
              mainText: widget.firstEntryMainText,
              descriptionText: widget.firstEntryDescriptionText,
            ),
            OnboardingThirdEntry(
              boxConstraints: constraints,
              assetPath: widget.firstEntryImage,
              mainText: widget.firstEntryMainText,
              descriptionText: widget.firstEntryDescriptionText,
            ),
          ],
        );
      }),
    );
  }
}
