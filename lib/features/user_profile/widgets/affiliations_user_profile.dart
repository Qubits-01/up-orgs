import 'package:flutter/material.dart';

class Affiliation extends StatefulWidget {
  const Affiliation({
    super.key,
  });

  @override
  State<Affiliation> createState() => _AffiliationState();
}

class _AffiliationState extends State<Affiliation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.all(5),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/avatars/cover_image.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Center(
        child: Text(
          "GDSC UPD",
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
