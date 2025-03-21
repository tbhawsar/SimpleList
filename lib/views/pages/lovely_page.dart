import 'package:flutter/material.dart';
import 'package:simple_list/views/widgets/hero_widget.dart';

class LovelyPage extends StatelessWidget {
  const LovelyPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroWidget(
                title: 'Lovely Page',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
