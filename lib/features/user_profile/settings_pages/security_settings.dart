import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/user_profile_settings.dart';

class SecuritySettings extends StatefulWidget {
  const SecuritySettings({super.key});

  @override
  State<SecuritySettings> createState() => _SecuritySettingsState();

  static const routeName = '/change_password';
}

class _SecuritySettingsState extends State<SecuritySettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Security")),
      body: ListView(
        children: [
          SecuritySettingsTextField(
            fieldName: "Old Password",
            hintText: "Enter Old Password",
          ),
          SecuritySettingsTextField(
            fieldName: "New Password",
            hintText: "Enter New Password",
          ),
          SecuritySettingsTextField(
            fieldName: "Confirm Password",
            hintText: "Re enter New Password",
          ),
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
        ],
      ),
    );
  }
}

class SecuritySettingsTextField extends StatefulWidget {
  const SecuritySettingsTextField({
    super.key,
    required this.fieldName,
    required this.hintText,
  });

  final String fieldName;
  final String hintText;

  @override
  State<SecuritySettingsTextField> createState() =>
      _SecuritySettingsTextFieldState();
}

class _SecuritySettingsTextFieldState extends State<SecuritySettingsTextField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text("${widget.fieldName}"),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: widget.hintText,
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
                icon: Icon(
                  _isObscured ? Icons.visibility_off : Icons.visibility,
                ),
              ),
            ),
            obscureText: _isObscured,
          )
        ],
      ),
    );
  }
}
