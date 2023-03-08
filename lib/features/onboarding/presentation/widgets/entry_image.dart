import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EntryImage extends StatelessWidget {
  const EntryImage({
    super.key,
    required this.assetPath,
  });

  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 300.0,
      margin: const EdgeInsets.only(bottom: 20.0),
      child: SvgPicture.asset(
        assetPath,
        fit: BoxFit.contain,
      ),
    );
  }
}
