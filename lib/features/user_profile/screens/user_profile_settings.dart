import 'package:flutter/material.dart';
import 'package:up_orgs/features/user_profile/widgets/general_settings_group.dart';
import 'package:up_orgs/features/user_profile/widgets/profile_card.dart';

class UserProfileSettings extends StatefulWidget {
  const UserProfileSettings({super.key});

  @override
  State<UserProfileSettings> createState() => _UserProfileSettingsState();
  static const routeName = "/profile_settings";
}

class _UserProfileSettingsState extends State<UserProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              profileCard(),
              SizedBox(height: 20),
              GeneralSettingsGroup(),
            ],
          ),
        ),
      ),
    );
  }
}
