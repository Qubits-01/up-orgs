import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class PersonalDetailsSettings extends StatelessWidget {
  const PersonalDetailsSettings({super.key});

  static const keyName = "key-name";
  static const keyCampus = "key-campus";

  @override
  Widget build(BuildContext context) {
    return SettingsScreen(
      title: 'Personal Details',
      children: [
        TextInputSettingsTile(
            title: 'Username',
            settingKey: keyName,
            borderColor: Color.fromRGBO(10, 68, 36, 1.0),
            helperText: "Change username"),
        DropDownSettingsTile(
          title: 'Campus',
          settingKey: keyCampus,
          selected: 1,
          values: {
            1: "Diliman",
            2: "Los Banos",
            3: "Manila",
            4: "Baguio",
          },
        ),
      ],
    );
  }
}
