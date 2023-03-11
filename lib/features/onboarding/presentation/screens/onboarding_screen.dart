import 'package:flutter/material.dart';
import 'package:up_orgs/constants/colors/app_colors.dart';

import "../widgets/onboarding_entry.dart";

import 'persistent_onboarding_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  static const routeName = '/onboarding';

  final firstGradient = const LinearGradient(
    colors: <Color>[
      AppColors.maroon,
      Colors.black,
    ],
    begin: Alignment.center,
    end: Alignment.topRight,
  );
  final firstAssetPath =
      'assets/images/visual_elements/undraw_studying_re_deca.svg';
  final firstEntryMainText = 'Discover 200+ Orgs with us';
  final firstEntryDescriptionText =
      'UP-Orgs is a platform that aims to connect people together.';

  final secondGradient = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.2, 0.4, 0.6, 0.8, 0.9],
    colors: <Color>[
      Color.fromARGB(255, 86, 192, 150),
      Color.fromARGB(255, 66, 146, 114),
      Color.fromARGB(255, 41, 119, 88),
      Color.fromARGB(255, 34, 90, 68),
      AppColors.green,
    ],
  );
  final secondAssetPath =
      'assets/images/visual_elements/undraw_engineering_team_a7n2.svg';
  final secondEntryMainText = 'Join Orgs of your interest';
  final secondEntryDescriptionText =
      'Improve your skills and share it with other people';

  final thirdGradient = const LinearGradient(
    colors: <Color>[
      Colors.orange,
      AppColors.yellow,
      AppColors.yellow,
      Colors.orange,
    ],
    begin: Alignment.center,
    end: Alignment.topRight,
  );
  final thirdAssetPath =
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
            OnboardingEntry(
                gradient: widget.firstGradient,
                boxConstraints: constraints,
                assetPath: widget.firstAssetPath,
                mainText: widget.firstEntryMainText,
                descriptionText: widget.firstEntryDescriptionText),
            OnboardingEntry(
              gradient: widget.secondGradient,
              boxConstraints: constraints,
              assetPath: widget.secondAssetPath,
              mainText: widget.secondEntryMainText,
              descriptionText: widget.secondEntryDescriptionText,
            ),
            OnboardingEntry(
              gradient: widget.thirdGradient,
              boxConstraints: constraints,
              assetPath: widget.thirdAssetPath,
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
