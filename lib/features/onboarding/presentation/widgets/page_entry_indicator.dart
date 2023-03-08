import 'package:flutter/material.dart';

// TODO: Make this widget dynamic.
class PageEntryIndicator extends StatelessWidget {
  const PageEntryIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 20.0,
          height: 4.0,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: const Color(0xfffebe00), // Colo gold.
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        Container(
          width: 12.0,
          height: 4.0,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: const Color(0xfff9a603), // Color gold.
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        Container(
          width: 12.0,
          height: 4.0,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: const Color(0xfff9a603), // Color gold.
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        Container(
          width: 12.0,
          height: 4.0,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: const Color(0xfff9a603), // Color gold
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ],
    );
  }
}
