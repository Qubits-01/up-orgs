import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../constants/colors/app_colors.dart';
import '../../../home/presentation/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // This is a temporary solution/workaround for the splash screen's
    // duration. In the future, the duration should be dependent on
    // the actual load time of the services/dependencies during
    // startup (also possibly with a minimum duration time).
    Future.delayed(
      const Duration(seconds: 2),
      () => GoRouter.of(context).go(HomeScreen.routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.callToActionColor,
      body: Center(
        child: Text(
          'UP-Orgs',
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: AppColors.neutralColorLight,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
