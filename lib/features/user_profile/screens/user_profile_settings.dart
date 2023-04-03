import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import '../settings_pages/personal_details_settings.dart';

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
      appBar: AppBar(title: Text("User settings")),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            SettingsGroup(
              title: 'Your Account',
              children: [
                SimpleSettingsTile(
                  title: 'Personal Details',
                  leading: Icon(
                    Icons.person,
                    color: Color.fromRGBO(102, 0, 0, 1.0),
                  ),
                  child: PersonalDetailsSettings(),
                ),
                SimpleSettingsTile(
                  title: 'Password & Security',
                  leading: Icon(
                    Icons.lock,
                    color: Color.fromRGBO(102, 0, 0, 1.0),
                  ),
                ),
                SimpleSettingsTile(
                  title: 'Privacy',
                  leading: Icon(
                    Icons.remove_red_eye,
                    color: Color.fromRGBO(102, 0, 0, 1.0),
                  ),
                ),
                SimpleSettingsTile(
                  title: 'Logout',
                  leading: Icon(
                    Icons.logout,
                    color: Color.fromRGBO(102, 0, 0, 1.0),
                  ),
                )
              ],
            ),
            SettingsGroup(
              title: 'Feedback',
              children: [
                SimpleSettingsTile(
                  title: 'Report a bug',
                  leading: Icon(
                    Icons.bug_report_outlined,
                    color: Color.fromRGBO(102, 0, 0, 1.0),
                  ),
                ),
                SimpleSettingsTile(
                  title: 'Send feedback',
                  leading: Icon(
                    Icons.mail_outline,
                    color: Color.fromRGBO(102, 0, 0, 1.0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
