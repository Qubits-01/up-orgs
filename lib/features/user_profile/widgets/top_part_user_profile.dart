import 'package:flutter/material.dart';
import 'settings_button.dart';

class TopPartUserProfile extends StatelessWidget {
  const TopPartUserProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CoverAndProfileImage(),
        NameAndUniversity(),
        SettingsButton(),
      ],
    );
  }
}

class NameAndUniversity extends StatelessWidget {
  const NameAndUniversity({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(children: const [
        Text(
          'John Doe',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'University of the Philippines - Diliman',
          style: TextStyle(fontSize: 16),
        ),
      ]),
    );
  }
}

class CoverAndProfileImage extends StatelessWidget {
  const CoverAndProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 90),
          child: const CoverImage(),
        ),
        const Positioned(
          top: 150,
          child: ProfileImage(),
        ),
      ],
    );
  }
}

class CoverImage extends StatelessWidget {
  const CoverImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 220,
      child: Image.asset('assets/images/avatars/cover_image.jpg',
          fit: BoxFit.cover),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: Colors.white,
              width: 5,
            )),
        child: const CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage('assets/images/avatars/Avatar 1.jpg'),
        ),
      ),
    );
  }
}
