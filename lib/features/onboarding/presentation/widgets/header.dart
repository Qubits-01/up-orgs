import 'package:flutter/material.dart';

import 'page_entry_indicator.dart';
import 'skip_button.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 60.0,
      left: 25.0,
      right: 25.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
          SkipButton(),
          PageEntryIndicator(),
        ],
      ),
    );
  }
}
