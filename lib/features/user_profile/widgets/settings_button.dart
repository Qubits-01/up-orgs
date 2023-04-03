import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/user_profile_settings.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: OutlinedButton(
        onPressed: () {
          GoRouter.of(context).push(UserProfileSettings.routeName);
        },
        child: const Text("User settings"),
      ),
    );
  }
}
