import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hey 👋🏻',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                "Let's find your\nExclusive Outfit",
                style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.w800,
                  height: 1.4,
                  color: Color(0xff171717),
                ),
              ),
            ],
          ),
        ),

        ClipOval(
          child: Image.network(
            'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=150',
            width: 43,
            height: 43,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}