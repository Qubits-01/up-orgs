import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class PreviousButton extends StatefulWidget {
  const PreviousButton({super.key});

  @override
  State<PreviousButton> createState() => _PreviousButtonState();
}

class _PreviousButtonState extends State<PreviousButton> {
  late bool _isPrevPressed;

  @override
  void initState() {
    super.initState();
    _isPrevPressed = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        Vibration.vibrate();
        setState(() => _isPrevPressed = true);
      },
      onTapUp: (_) {
        setState(() => _isPrevPressed = false);
      },
      child: Container(
        width: 80.0,
        height: 60.0,
        decoration: BoxDecoration(
          color: Color(_isPrevPressed ? 0xff192841 : 0xff152238),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16.0),
            bottomLeft: Radius.circular(16.0),
          ),
        ),
        child: Icon(
          Icons.arrow_back_rounded,
          color: _isPrevPressed ? Colors.white : Colors.white70,
        ),
      ),
    );
  }
}
