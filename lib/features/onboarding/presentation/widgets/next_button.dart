import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class NextButton extends StatefulWidget {
  const NextButton({super.key});

  @override
  State<NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  late bool _isNextPressed;

  @override
  void initState() {
    super.initState();
    _isNextPressed = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        Vibration.vibrate();
        setState(() => _isNextPressed = true);
      },
      onTapUp: (_) {
        setState(() => _isNextPressed = false);
      },
      child: Container(
        width: 80.0,
        height: 60.0,
        decoration: BoxDecoration(
          color: Color(
            _isNextPressed ? 0xff192841 : 0xff152238,
          ),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(16.0),
            bottomRight: Radius.circular(16.0),
          ),
        ),
        child: Icon(
          Icons.arrow_forward_rounded,
          color: _isNextPressed ? Colors.white : Colors.white70,
        ),
      ),
    );
  }
}
