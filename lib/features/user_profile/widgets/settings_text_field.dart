import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SettingsTextField extends StatefulWidget {
  const SettingsTextField({
    super.key,
    required this.fieldName,
    required this.initialFieldValue,
    required this.maxCharacters,
    required this.maxLines,
  });

  final String fieldName;
  final String initialFieldValue;
  final int maxCharacters;
  final int maxLines;

  @override
  State<SettingsTextField> createState() => _SettingsTextFieldState();
}

class _SettingsTextFieldState extends State<SettingsTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(children: [
          Align(
            child: Text(widget.fieldName),
            alignment: Alignment.topLeft,
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: widget.initialFieldValue,
              border: OutlineInputBorder(),
              hintMaxLines: widget.maxLines,
            ),
            maxLines: widget.maxLines,
            maxLength: widget.maxCharacters,
          ),
        ]),
      ),
    );
  }
}
