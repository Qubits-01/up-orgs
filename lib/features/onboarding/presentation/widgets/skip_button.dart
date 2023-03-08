import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class SkipButton extends StatefulWidget {
  const SkipButton({super.key});

  @override
  State<SkipButton> createState() => _SkipButtonState();
}

class _SkipButtonState extends State<SkipButton> {
  late bool _isSkipPressed;

  @override
  void initState() {
    super.initState();
    _isSkipPressed = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        Vibration.vibrate();
        setState(() => _isSkipPressed = true);
      },
      onTapUp: (_) {
        setState(() => _isSkipPressed = false);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 7.0,
        ),
        decoration: BoxDecoration(
          color: _isSkipPressed ? Colors.red : const Color(0xff562424),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Text(
          'Skip',
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: _isSkipPressed ? Colors.white : Colors.white70,
              ),
        ),
      ),
    );
  }
}
