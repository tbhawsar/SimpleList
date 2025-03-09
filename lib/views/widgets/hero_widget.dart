import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Hero(
          tag: 'hero1',
          child: Image.asset(
            'assets/images/background.jpeg',
            color: Colors.teal,
            colorBlendMode: BlendMode.darken,
          ),
        ),
      ),
    );
  }
}