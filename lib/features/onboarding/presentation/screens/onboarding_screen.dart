import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rive/rive.dart';

import '../../../../core/features/auth/presentation/screens/login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  static const routeName = '/onboarding';

  final movingShapesPath = 'assets/rive/shapes.riv';
  final splinePath = 'assets/images/backgrounds/Spline.png';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Blur moving background.
          Positioned(
            width: MediaQuery.of(context).size.width * 1.7,
            bottom: 200.0,
            left: 100.0,
            child: Image.asset(widget.splinePath),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 10.0),
              // Covers the entire screen (implicit height and width).
              child: const SizedBox(),
            ),
          ),
          RiveAnimation.asset(widget.movingShapesPath),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 10.0),
              child: const SizedBox(),
            ),
          ),

          // Foreground text.
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: SizedBox(
                width: 260.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 100.0),
                    Text(
                      'Find your home',
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.displayMedium?.fontSize,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      'Here at UP-Orgs, we aim to provide a platform for UP students to find a home where they belong.',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    const SizedBox(height: 200.0),

                    // Let's Go button.
                    SizedBox(
                      width: 200.0,
                      child: ElevatedButton(
                        onPressed: () {
                          GoRouter.of(context).push(LoginScreen.routeName);
                        },
                        style: ElevatedButton.styleFrom(elevation: 0.0),
                        child: const Text('Let\'s Go'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
