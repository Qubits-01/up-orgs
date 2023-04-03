import 'package:flutter/material.dart';

import 'affiliations_user_profile.dart';

class AffiliationsTab extends StatefulWidget {
  const AffiliationsTab({super.key});

  @override
  State<AffiliationsTab> createState() => _AffiliationsTabState();
}

class _AffiliationsTabState extends State<AffiliationsTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Affiliation(),
        Affiliation(),
        Affiliation(),
        Affiliation(),
      ],
    );
  }
}
