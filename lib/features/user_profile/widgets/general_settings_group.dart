import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:up_orgs/features/user_profile/settings_pages/personal_details_settings.dart';

import '../settings_pages/security_settings.dart';

class GeneralSettingsGroup extends StatelessWidget {
  const GeneralSettingsGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text("GENERAL",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
          ),
          ListTile(
            leading: Container(
              child:
                  Icon(Icons.settings, color: Color.fromRGBO(102, 0, 0, 0.8)),
              height: double.maxFinite,
            ),
            title: Text(
              "Profile Settings",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Update and modify your profile"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              GoRouter.of(context).push(PersonalDetailsSettings.routeName);
            },
          ),
          ListTile(
            leading: Container(
              child: Icon(Icons.shield, color: Color.fromRGBO(102, 0, 0, 0.8)),
              height: double.maxFinite,
            ),
            title: Text("Security"),
            subtitle: Text("Change your password"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              GoRouter.of(context).push(SecuritySettings.routeName);
            },
          ),
          ListTile(
            leading: Container(
              child: Icon(Icons.remove_red_eye,
                  color: Color.fromRGBO(102, 0, 0, 0.8)),
              height: double.maxFinite,
            ),
            title: Text("Privacy"),
            subtitle: Text("What can other users see from you"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
    );
  }
}
