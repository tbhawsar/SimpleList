import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({
    super.key,
    required this.title,
    this.nextPage,
  });

  final String title;
  final Widget? nextPage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextPage != null
          ? () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => nextPage!,
                ),
              );
            }
          : null,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Hero(
            tag: 'hero1',
            child: AspectRatio(
              aspectRatio: 1920 / 1080,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/images/background.jpeg',
                  color: Colors.teal,
                  colorBlendMode: BlendMode.darken,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          FittedBox(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 10.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
