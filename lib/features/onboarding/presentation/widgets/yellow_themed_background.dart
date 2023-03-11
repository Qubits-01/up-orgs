import 'package:flutter/material.dart';

import '../../../../constants/colors/app_colors.dart';

class YellowThemedBackground extends StatelessWidget {
  const YellowThemedBackground({
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
          colors: <Color>[
            Colors.orange,
            AppColors.yellow,
            AppColors.yellow,
            Colors.orange,
          ],
          begin: Alignment.center,
          end: Alignment.topRight,
        ),
      ),
    );
  }
}
