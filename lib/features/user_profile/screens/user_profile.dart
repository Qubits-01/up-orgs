import 'package:flutter/material.dart';
import '../widgets/tab_bar_user_profile.dart';
import '../widgets/top_part_user_profile.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();

  static const routeName = "/profile";
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          TopPartUserProfile(),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SizedBox(
              height: 150,
              child: TabBarUserProfile(),
            ),
          )
        ],
      ),
    );
  }
}
