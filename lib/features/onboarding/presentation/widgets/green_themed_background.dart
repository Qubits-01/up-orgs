import 'package:flutter/material.dart';

import '../../../../constants/colors/app_colors.dart';

class GreenThemedBackground extends StatelessWidget {
  const GreenThemedBackground({
    super.key,
    required BoxConstraints boxConstraints,
  }) : _boxConstraints = boxConstraints;

  final BoxConstraints _boxConstraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _boxConstraints.maxWidth,
      height: _boxConstraints.maxHeight,
      decoration: const BoxDecoration(
        // color: AppColors.maroon,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.4, 0.6, 0.8, 0.9],
          colors: <Color>[
            Color.fromARGB(255, 86, 192, 150),
            Color.fromARGB(255, 66, 146, 114),
            Color.fromARGB(255, 41, 119, 88),
            Color.fromARGB(255, 34, 90, 68),
            AppColors.green,
          ],
        ),
      ),
    );
  }
}
