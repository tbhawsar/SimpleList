import 'package:flutter/material.dart';
import 'package:simple_list/data/constants.dart';
import 'package:simple_list/views/pages/lovely_page.dart';
import 'package:simple_list/views/widgets/container_widget.dart';
import 'package:simple_list/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      KContainerText.containerTitle1,
      KContainerText.containerTitle2,
      KContainerText.containerTitle3,
      KContainerText.containerTitle4,
      KContainerText.containerTitle5,
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            HeroWidget(
              title: 'Home Page',
              nextPage: LovelyPage(),
            ),
            SizedBox(
              height: 5.0,
            ),
            ...List.generate(
              1,
              (index) {
                return ContainerWidget(
                  title: 'Title $index',
                  description: 'Description $index',
                );
              },
            ),
            ...List.generate(
              titles.length,
              (index) {
                return ContainerWidget(
                  title: titles.elementAt(index),
                  description: 'Description $index',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
