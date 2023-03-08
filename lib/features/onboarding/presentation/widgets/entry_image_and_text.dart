import 'package:flutter/material.dart';

import 'entry_image.dart';
import 'entry_text_body.dart';

class EntryImageAndText extends StatelessWidget {
  const EntryImageAndText({
    super.key,
    required BoxConstraints boxConstraints,
    required String assetPath,
    required String mainText,
    required String descriptionText,
  })  : _boxConstraints = boxConstraints,
        _assetPath = assetPath,
        _mainText = mainText,
        _descriptionText = descriptionText;

  final BoxConstraints _boxConstraints;
  final String _assetPath;
  final String _mainText, _descriptionText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _boxConstraints.maxWidth,
      height: _boxConstraints.maxHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Eye-catching picture.
          EntryImage(assetPath: _assetPath),
          EntryTextBody(
            mainText: _mainText,
            descriptionText: _descriptionText,
          ),
        ],
      ),
    );
  }
}
