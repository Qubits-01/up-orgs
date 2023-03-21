import 'package:flutter/material.dart';

class ThemedBackground extends StatelessWidget {
  const ThemedBackground({
    super.key,
    required LinearGradient gradient,
    required BoxConstraints boxConstraints,
  })  : _gradient = gradient,
        _boxConstraints = boxConstraints;

  final LinearGradient _gradient;
  final BoxConstraints _boxConstraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _boxConstraints.maxWidth,
      height: _boxConstraints.maxHeight,
      decoration: BoxDecoration(
        gradient: _gradient,
      ),
    );
  }
}
