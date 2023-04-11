import 'package:flutter/material.dart';

class InterestsSelection extends StatefulWidget {
  const InterestsSelection({super.key});

  @override
  State<InterestsSelection> createState() => _InterestsChecklistState();
}

class _InterestsChecklistState extends State<InterestsSelection> {
  var topics = [
    "Fitness and Sports",
    "Community Service",
    "Music and Performating Arts",
    "Entrepreneurship",
    "Gaming",
    "Environmentalism",
    "Debate and Public Speaking",
    "Film and Media",
    "Programming and Technology",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            const Align(
              child: Text("Interests"),
              alignment: Alignment.topLeft,
            ),
            Wrap(
              spacing: 5.0,
              children: List<Widget>.generate(topics.length, (int index) {
                return InterestChip(topics: topics, index: index);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class InterestChip extends StatefulWidget {
  const InterestChip({
    super.key,
    required this.topics,
    required this.index,
  });

  final List topics;
  final int index;

  @override
  State<InterestChip> createState() => _InterestChipState();
}

class _InterestChipState extends State<InterestChip> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text('${widget.topics[widget.index]}'),
      selected: _isSelected,
      selectedColor: Color.fromRGBO(10, 68, 36, 0.8),
      labelStyle: TextStyle(color: _isSelected ? Colors.white : Colors.black),
      onSelected: (newBoolean) {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
    );
  }
}
