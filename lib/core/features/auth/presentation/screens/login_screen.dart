import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants/colors/app_colors.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';

  const LoginScreen({super.key});

  final loginVisualElementPath =
      'assets/images/visual_elements/undraw_login_re_4vu2.svg';
  final googleIconPath =
      'assets/images/icons/icons8-google-color/icons8-google-48.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(24.0),
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: Column(
                children: [
                  Column(
                    children: [
                      // Login visual element.
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 24.0,
                          right: 24.0,
                          left: 24.0,
                        ),
                        child: SvgPicture.asset(
                          loginVisualElementPath,
                          semanticsLabel: 'Login Visual Element',
                          height: constraints.maxHeight * 0.30,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 20.0),

                      // Login text.
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Login',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontWeight: FontWeight.w900,
                                color: AppColors.steel,
                              ),
                        ),
                      ),
                      const SizedBox(height: 20.0),

                      // Email and Password text fields.
                      Form(
                        child: Column(
                          children: const [
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Email',
                                icon: Icon(Icons.email_rounded),
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Password',
                                icon: Icon(Icons.password_rounded),
                              ),
                              keyboardType: TextInputType.visiblePassword,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20.0),

                      // Forgot Password?
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          child: Text(
                            'Forgot Password?',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  color: AppColors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          onTap: () {
                            // Go to Forgot Password screen.
                          },
                        ),
                      ),
                      const SizedBox(height: 30.0),

                      // Login button.
                      SizedBox(
                        width: constraints.maxWidth,
                        height: 50.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Theme.of(context).colorScheme.primary),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Login',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),

                      // Or Divider.
                      Row(
                        children: [
                          const Expanded(child: Divider()),
                          Text(
                            'OR',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  color: AppColors.gray,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const Expanded(child: Divider()),
                        ],
                      ),
                      const SizedBox(height: 20.0),

                      // Login with Google button.
                      SizedBox(
                        width: constraints.maxWidth,
                        height: 50.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.green[50],
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: SvgPicture.asset(
                                      googleIconPath,
                                      semanticsLabel: 'Google Icon',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Login with Google',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(
                                          color: AppColors.deepGray,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),

                      // Login Anonymously.
                      SizedBox(
                        width: constraints.maxWidth,
                        height: 50.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.green[50],
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: SvgPicture.asset(
                                      googleIconPath,
                                      semanticsLabel: 'Google Icon',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Login Anonymously',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(
                                          color: AppColors.deepGray,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),

                      // New to UP Orgs? Sign Up
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('New to Logistics?'),
                          Text('Sign Up'),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
