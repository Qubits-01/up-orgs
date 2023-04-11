import 'package:flutter/material.dart';

class PrivacySettings extends StatefulWidget {
  const PrivacySettings({super.key});

  @override
  State<PrivacySettings> createState() => _PrivacySettingsState();

  static const routeName = "/privacy-settings";
}

class _PrivacySettingsState extends State<PrivacySettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text("Visibility"),
            ),
            PrivacySettingsTile(
              propertyName: "Show Personal Information",
              description:
                  "Manage if personal infromation can be seen by others",
            ),
            PrivacySettingsTile(
              propertyName: "Show Affiliations",
              description: "Manage if Org Affiliations can be seen by others",
            ),
            PrivacySettingsTile(
              propertyName: "Show Applications",
              description: "Manage if Org Applications can be seen by others",
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text("Notifications"),
            ),
            PrivacySettingsTile(
              propertyName: "Enable Push Notifications",
              description: "Enable/Disable Push Notifications",
            ),
          ],
        ),
      ),
    );
  }
}

class PrivacySettingsTile extends StatefulWidget {
  const PrivacySettingsTile({
    super.key,
    required this.propertyName,
    required this.description,
  });

  final String propertyName;
  final String description;

  @override
  State<PrivacySettingsTile> createState() => _PrivacySettingsTileState();
}

class _PrivacySettingsTileState extends State<PrivacySettingsTile> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SwitchListTile(
        onChanged: (value) {
          setState(() {
            _isToggled = !_isToggled;
          });
        },
        value: _isToggled,
        title: Text("${widget.propertyName}"),
        subtitle: Text("${widget.description}"),
      ),
    );
  }
}
