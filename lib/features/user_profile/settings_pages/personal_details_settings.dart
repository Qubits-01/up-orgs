import 'package:flutter/material.dart';

import '../widgets/settings_text_field.dart';

class PersonalDetailsSettings extends StatefulWidget {
  const PersonalDetailsSettings({super.key});

  @override
  State<PersonalDetailsSettings> createState() =>
      _PersonalDetailsSettingsState();
  static const routeName = "/edit_profile";
}

class _PersonalDetailsSettingsState extends State<PersonalDetailsSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Settings"),
      ),
      body: Column(children: [
        SettingsTextField(
          fieldName: "Username",
          initialFieldValue: "John Doe",
          maxCharacters: 100,
          maxLines: 1,
        ),
        SettingsTextField(
          fieldName: "Introduction",
          initialFieldValue:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vestibulum, eros sed tristique vulputate, sapien nulla facilisis neque, non posuere lorem tellus in ex. Suspendisse potenti. In fermentum tristique ipsum, eget condimentum quam dapibus ut. Fusce ut sollicitudin nibh. Nulla blandit nulla eu risus fringilla, vel pharetra purus laoreet. Donec pretium volutpat nulla sit amet dictum. Curabitur id urna id metus maximus feugiat.",
          maxCharacters: 180,
          maxLines: 5,
        ),
      ]),
    );
  }
}
