import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants/colors/app_colors.dart';

// TODO: Refactor this widget into different componets/widgets.
class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  static const routeName = '/forgot-password';

  final forgotPasswordPath =
      'assets/images/visual_elements/undraw_forgot_password_re_hxwm.svg';
  final forgotPasswordLongText = 'Don\'t worry! it happens. Please enter '
      'the address associated with you account.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints boxConstraints) {
          return SizedBox(
            width: boxConstraints.maxWidth,
            height: boxConstraints.maxHeight,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Forgot password illustration.
                  SizedBox(
                    height: 300.0,
                    child: SvgPicture.asset(
                      forgotPasswordPath,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 20.0),

                  // Forgot password text.
                  SizedBox(
                    width: 250.0,
                    child: Text(
                      'Forgot Password?',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: AppColors.steel,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  SizedBox(
                    width: 300.0,
                    child: Text(
                      forgotPasswordLongText,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: AppColors.deepGray,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                          ),
                    ),
                  ),
                  const SizedBox(height: 40.0),

                  // Email text field.
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      icon: Icon(Icons.email_rounded),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                  ),
                  const SizedBox(height: 40.0),

                  // Submit button.
                  SizedBox(
                    width: boxConstraints.maxWidth,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(elevation: 0.0),
                      child: Text(
                        'Submit',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
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
