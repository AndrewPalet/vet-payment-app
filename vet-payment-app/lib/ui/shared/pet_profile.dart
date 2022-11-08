import 'package:flutter/material.dart';
import 'package:app/global/constants.dart';

class PetProfile extends StatelessWidget {
  const PetProfile(
      {super.key, required this.imageURL, required this.labelText});
  final String imageURL;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 55,
            backgroundColor: petProfileBackgroundColor,
            child: CircleAvatar(
              radius: 45,
              backgroundImage: NetworkImage(imageURL),
            ),
          ),
          Text(labelText,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ],
      ),
    );
  }
}
