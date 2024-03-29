import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants/colors/app_colors.dart';
import 'forgot_password_screen.dart';
import 'sign_up_screen.dart';

// TODO: Make this Widget lean.
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const routeName = '/login';

  final loginVisualElementPath =
      'assets/images/visual_elements/undraw_login_re_4vu2.svg';
  final googleIconPath =
      'assets/images/icons/icons8-google-color/icons8-google-48.svg';
  final facebookIconPath =
      'assets/images/icons/icons8-facebook-windows-11-color/icons8-facebook-48.svg';
  final anonymousIconPath =
      'assets/images/icons/icons8-incognito-those-icons-fill/icons8-incognito-48.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SizedBox(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
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
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
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
                          textInputAction: TextInputAction.next,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            icon: Icon(Icons.password_rounded),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
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
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
                                  color: AppColors.green,
                                  fontWeight: FontWeight.w900,
                                ),
                      ),
                      onTap: () {
                        GoRouter.of(context).push(ForgotPassword.routeName);
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
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
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
                    children: <Widget>[
                      const Expanded(child: Divider()),
                      Text(
                        'OR',
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
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
                          children: <Widget>[
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

                  // Login with Facebook button.
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
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: SvgPicture.asset(
                                  facebookIconPath,
                                  semanticsLabel: 'Facebook Icon',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Login with Facebook',
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
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 24.0),
                                child: Image.asset(
                                  anonymousIconPath,
                                  semanticLabel: 'Anonymous Icon',
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
                      const Text('New to UP-Orgs? '),
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(SignUpScreen.routeName);
                        },
                        child: Text(
                          'Sign Up',
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: AppColors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
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
