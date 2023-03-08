import 'package:flutter/material.dart';

class EntryTextBody extends StatelessWidget {
  const EntryTextBody({
    super.key,
    required this.mainText,
    required this.descriptionText,
  });

  final String mainText, descriptionText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 325.0,
      height: 200.0,
      child: Column(
        // Main text.
        children: <Widget>[
          Text(
            mainText,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: Colors.red[100],
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 15.0),
          Text(
            descriptionText,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Colors.red[100],
                  height: 1.75,
                ),
          ),
        ],
      ),
    );
  }
}
