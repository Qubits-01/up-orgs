import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
              LogoutButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 0.0),
        child: TextButton(
          child: Text(
            "Logout",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Color.fromRGBO(102, 0, 0, 0.9),
            fixedSize: Size(double.maxFinite, 40),
          ),
        ),
      ),
    );
  }
}
