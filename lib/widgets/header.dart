import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                'Sabrina',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          InstaImageViewer(
            child: CircleAvatar(
              backgroundImage:
                  AssetImage('images/sab.jpg'), // Add your profile image here
              radius: 24,
            ),
          )
        ],
      ),
    );
  }
}
