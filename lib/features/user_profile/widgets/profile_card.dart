import 'package:flutter/material.dart';
import 'package:up_orgs/features/user_profile/widgets/top_part_user_profile.dart';

class profileCard extends StatefulWidget {
  const profileCard({super.key});

  @override
  State<profileCard> createState() => _profileCardState();
}

class _profileCardState extends State<profileCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 15.0)]),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10.0, 0.0, 10.0),
              child: Container(
                child: Column(
                  children: const [
                    ProfileImage(),
                    NameAndUniversity(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
