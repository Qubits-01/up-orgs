import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  static const routeName = '/onboarding';

  final maroonClothPath = 'assets/images/backgrounds/maroon-cloth.jpg';
  final loadingBookPath = 'assets/rive/113-173-loading-book.riv';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  bool isPrevPressed = false;
  bool isNextPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (
        BuildContext context,
        BoxConstraints constraints,
      ) {
        return PageView(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                // Maroon themed background (w/ glass morphism effect).
                Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  decoration: BoxDecoration(
                    // color: AppColors.maroon,
                    // gradient: LinearGradient(
                    //   colors: <Color>[
                    //     AppColors.maroon,
                    //     Colors.black,
                    //   ],
                    //   begin: Alignment.center,
                    //   end: Alignment.topRight,
                    // ),
                    image: DecorationImage(
                      image: AssetImage(widget.maroonClothPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 20.0),
                    child: SizedBox(
                      width: constraints.maxWidth,
                      height: constraints.maxHeight,
                    ),
                  ),
                ),

                // Foreground.
                SizedBox(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Eye-catching picture.
                      SizedBox(
                        width: 200.0,
                        height: 200.0,
                        child: RiveAnimation.asset(
                          widget.loadingBookPath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  top: 60.0,
                  left: 25.0,
                  right: 25.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // Skip button.
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 7.0,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xff562424),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Text(
                          'Skip',
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    color: Colors.white70,
                                  ),
                        ),
                      ),

                      // Progress indicator.
                      // TODO: Make this a dynamic widget.
                      Row(
                        children: <Widget>[
                          Container(
                            width: 20.0,
                            height: 4.0,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: const Color(0xff330000),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          Container(
                            width: 12.0,
                            height: 4.0,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: const Color(0xff1a0000),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          Container(
                            width: 12.0,
                            height: 4.0,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: const Color(0xff1a0000),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          Container(
                            width: 12.0,
                            height: 4.0,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: const Color(0xff1a0000),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Prev and Next buttons.
                Positioned(
                  bottom: 50.0,
                  child: Row(
                    children: <Widget>[
                      // Previous button.
                      GestureDetector(
                        onTapDown: (_) {
                          setState(() => isPrevPressed = true);
                        },
                        onTapUp: (_) {
                          setState(() => isPrevPressed = false);
                        },
                        child: Container(
                          width: 80.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color:
                                Color(isPrevPressed ? 0xff192841 : 0xff152238),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              bottomLeft: Radius.circular(16.0),
                            ),
                          ),
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color:
                                isPrevPressed ? Colors.white : Colors.white70,
                          ),
                        ),
                      ),

                      // Next button.
                      GestureDetector(
                        onTapDown: (_) {
                          setState(() => isNextPressed = true);
                        },
                        onTapUp: (_) {
                          setState(() => isNextPressed = false);
                        },
                        child: Container(
                          width: 80.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color:
                                Color(isNextPressed ? 0xff192841 : 0xff152238),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(16.0),
                              bottomRight: Radius.circular(16.0),
                            ),
                          ),
                          child: Icon(
                            Icons.arrow_forward_rounded,
                            color:
                                isNextPressed ? Colors.white : Colors.white70,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}
