import 'package:flutter/material.dart';

import 'onboarding_first_entry.dart';
import 'onboarding_second_entry.dart';
import 'onboarding_third_entry.dart';
import 'persistent_onboarding_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  static const routeName = '/onboarding';

  // TODO: Make a OnboardingEntryEntity for this.
  final firstEntryImage =
      'assets/images/visual_elements/undraw_studying_re_deca.svg';
  final firstEntryMainText = 'Discover 200+ Orgs with us';
  final firstEntryDescriptionText =
      'UP-Orgs is a platform that aims to connect people together.';

  final secondEntryImage =
      'assets/images/visual_elements/undraw_engineering_team_a7n2.svg';
  final secondEntryMainText = 'Join Orgs of your interest';
  final secondEntryDescriptionText =
      'Improve your skills and share it with other people';

  final thirdEntryImage =
      'assets/images/visual_elements/undraw_having_fun_re_vj4h.svg';
  final thirdEntryMainText = 'Invite people to your Org';
  final thirdEntryDescriptionText =
      'Build a community with the help of your phone.';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pageController = PageController(initialPage: 0);

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
              assetPath: widget.secondEntryImage,
              mainText: widget.secondEntryMainText,
              descriptionText: widget.secondEntryDescriptionText,
            ),
            OnboardingThirdEntry(
              boxConstraints: constraints,
              assetPath: widget.thirdEntryImage,
              mainText: widget.thirdEntryMainText,
              descriptionText: widget.thirdEntryDescriptionText,
            ),
            const PersistentOnboardingScreen(),
          ],
        );
      }),
    );
  }
}
