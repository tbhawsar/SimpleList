import 'package:flutter/material.dart';
import 'package:simple_list/views/widgets/container_widget.dart';
import 'package:simple_list/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'Home Page',),
            ContainerWidget(
              title: 'Title 1',
              description: 'Description 1',
            ),
            ContainerWidget(
              title: 'Title 2',
              description: 'Description 2',
            ),
          ],
        ),
      ),
    );
  }
}
