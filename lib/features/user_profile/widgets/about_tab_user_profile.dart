import 'package:flutter/material.dart';

class AboutTab extends StatefulWidget {
  const AboutTab({super.key});

  @override
  State<AboutTab> createState() => _AboutTabState();
}

class _AboutTabState extends State<AboutTab> {
  final List<bool> _isOpen = [true, false, false, false];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        expansionCallback: (index, isOpen) {
          setState(() {
            _isOpen[index] = !isOpen;
          });
        },
        children: [
          ExpansionPanel(
            headerBuilder: (context, isOpen) {
              return const Center(
                child: Text(
                  "Introduction",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              );
            },
            body: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vestibulum, eros sed tristique vulputate, sapien nulla facilisis neque, non posuere lorem tellus in ex. Suspendisse potenti. In fermentum tristique ipsum, eget condimentum quam dapibus ut. Fusce ut sollicitudin nibh. Nulla blandit nulla eu risus fringilla, vel pharetra purus laoreet. Donec pretium volutpat nulla sit amet dictum. Curabitur id urna id metus maximus feugiat.",
                textAlign: TextAlign.left,
              ),
            ),
            isExpanded: _isOpen[0],
            canTapOnHeader: true,
          ),
          ExpansionPanel(
            headerBuilder: (context, isOpen) {
              return const Center(
                child: Text(
                  "Personal Information",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              );
            },
            body: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vestibulum, eros sed tristique vulputate, sapien nulla facilisis neque, non posuere lorem tellus in ex. Suspendisse potenti. In fermentum tristique ipsum, eget condimentum quam dapibus ut. Fusce ut sollicitudin nibh. Nulla blandit nulla eu risus fringilla, vel pharetra purus laoreet. Donec pretium volutpat nulla sit amet dictum. Curabitur id urna id metus maximus feugiat.",
                textAlign: TextAlign.left,
              ),
            ),
            isExpanded: _isOpen[1],
            canTapOnHeader: true,
          ),
          ExpansionPanel(
            headerBuilder: (context, isOpen) {
              return const Center(
                child: Text(
                  "Interests",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              );
            },
            body: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vestibulum, eros sed tristique vulputate, sapien nulla facilisis neque, non posuere lorem tellus in ex. Suspendisse potenti. In fermentum tristique ipsum, eget condimentum quam dapibus ut. Fusce ut sollicitudin nibh. Nulla blandit nulla eu risus fringilla, vel pharetra purus laoreet. Donec pretium volutpat nulla sit amet dictum. Curabitur id urna id metus maximus feugiat.",
                textAlign: TextAlign.left,
              ),
            ),
            isExpanded: _isOpen[2],
            canTapOnHeader: true,
          ),
        ],
      ),
    );
  }
}
