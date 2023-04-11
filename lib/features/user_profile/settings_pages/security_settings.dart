import 'package:flutter/material.dart';

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
  bool _isVisible = false;
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
                    _isVisible = !_isVisible;
                  });
                },
                icon: const Icon(Icons.remove_red_eye),
              ),
            ),
            obscureText: _isVisible,
          )
        ],
      ),
    );
  }
}
