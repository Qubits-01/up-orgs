import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:up_orgs/features/user_profile/widgets/interests_checklist.dart';
import '../screens/user_profile_settings.dart';
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
      body: ListView(children: [
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
        InterestsSelection(),
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
          child: TextButton(
            child: Text(
              "Submit",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Color.fromRGBO(10, 68, 36, 1.0),
              fixedSize: Size(double.maxFinite, 40),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
          child: TextButton(
            child: Text(
              "Cancel",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              GoRouter.of(context).push(UserProfileSettings.routeName);
            },
            style: TextButton.styleFrom(
              backgroundColor: Color.fromRGBO(102, 0, 0, 0.9),
              fixedSize: Size(double.maxFinite, 40),
            ),
          ),
        ),
      ]),
    );
  }
}
