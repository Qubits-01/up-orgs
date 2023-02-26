import 'dart:ui';

import 'package:flutter/material.dart';

/// Ref: https://drive.google.com/drive/folders/1rXCbUuun0VqexHmjBmdceYx4IiltbmOh?usp=sharing
class AppColors {
  const AppColors._();

  static const Color neutralColorLight = white;
  static const Color neutralColorDark = steel;
  static const Color callToActionColor = green;
  static const Color primaryColor = maroon;

  // Digital identity colors of UP.
  static const Color maroon = Color(0xff76090c);
  static const Color green = Color(0xff0a4424);
  static const Color yellow = Color(0xfff5ab29);
  static const Color brownOlive = Color(0xff7c6028);

  static const Color white = Color(0xffffffff);
  static const Color gray = Color(0xffa9a9a9);
  static const Color deepGray = Color(0xff656565);
  static const Color darkGray = Color(0xff3a3a3a);
  static const Color steel = Color(0xff202020);
}

extension HexColor on Color {
  // TODO: Add test on this extension class.

  /// Creates a [Color] object from a hex color code string of the the
  /// format #RRGGBB or #AARRGGBB (optional leading '#'; 'AA' stands for alpha or opacity).
  /// The default opacity of 1.0 or 'FF' in hex (i.e., full opacity).
  static Color fromHex(String hexString, {String opacity = 'FF'}) {
    final int length = hexString.length;
    final buffer = StringBuffer();

    if (length >= 6 && length <= 9) {
      buffer.write(opacity);
      buffer.write(
        hexString.replaceFirst('#', '').substring(length == 6 ? 0 : 2, length),
      );
    }

    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Returns a string representation of this color in the format #AARRGGBB.
  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) {
    return '${leadingHashSign ? '#' : ''}'
        '${alpha.toRadixString(16).toUpperCase().padLeft(2, '0')}'
        '${red.toRadixString(16).toUpperCase().padLeft(2, '0')}'
        '${green.toRadixString(16).toUpperCase().padLeft(2, '0')}'
        '${blue.toRadixString(16).toUpperCase().padLeft(2, '0')}';
  }
}
